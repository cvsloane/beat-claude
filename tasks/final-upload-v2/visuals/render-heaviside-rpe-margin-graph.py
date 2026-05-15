#!/usr/bin/env python3
import csv
import html
from pathlib import Path


HERE = Path(__file__).resolve().parent
CSV_PATH = HERE / "heaviside-quarterly-rpe-net-margin.csv"
SVG_PATH = HERE / "heaviside-rev-fte-net-margin-by-quarter.svg"
HTML_PATH = HERE / "heaviside-rev-fte-net-margin-by-quarter.html"

WIDTH = 2200
HEIGHT = 1300

BLUE = "#2563eb"
ORANGE = "#ea580c"
INK = "#0f172a"
MUTED = "#475569"
GRID = "#dbe3ee"
PANEL = "#ffffff"
BG = "#f8fafc"
WASH = "#eaf3ff"


def esc(value):
    return html.escape(str(value), quote=True)


def money_k(value):
    return f"${value / 1000:.1f}K"


def money_axis(value):
    if value == 0:
        return "$0"
    return f"${int(value / 1000)}K"


def pct(value):
    return f"{value:.1f}%"


def pct_axis(value):
    return f"{int(value)}%"


def text(x, y, value, size=24, weight=400, fill=INK, anchor="start", extra=""):
    return (
        f'<text x="{x:.1f}" y="{y:.1f}" font-family="Inter, Arial, sans-serif" '
        f'font-size="{size}" font-weight="{weight}" fill="{fill}" '
        f'text-anchor="{anchor}" {extra}>{esc(value)}</text>'
    )


def line(x1, y1, x2, y2, stroke=GRID, width=2, extra=""):
    return (
        f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2:.1f}" y2="{y2:.1f}" '
        f'stroke="{stroke}" stroke-width="{width}" {extra}/>'
    )


def rect(x, y, w, h, fill="none", stroke="none", width=1, rx=0, extra=""):
    return (
        f'<rect x="{x:.1f}" y="{y:.1f}" width="{w:.1f}" height="{h:.1f}" '
        f'fill="{fill}" stroke="{stroke}" stroke-width="{width}" rx="{rx}" {extra}/>'
    )


def polyline(points, color, width=6):
    coords = " ".join(f"{x:.1f},{y:.1f}" for x, y in points)
    return (
        f'<polyline points="{coords}" fill="none" stroke="{color}" '
        f'stroke-width="{width}" stroke-linejoin="round" stroke-linecap="round"/>'
    )


def circle(x, y, color):
    return (
        f'<circle cx="{x:.1f}" cy="{y:.1f}" r="9" fill="{PANEL}" '
        f'stroke="{color}" stroke-width="5"/>'
    )


def metric_box(x, y, label, value, detail, color):
    return "\n".join(
        [
            rect(x, y, 300, 112, fill="#f1f5f9", stroke="#cbd5e1", width=1.5, rx=16),
            text(x + 24, y + 34, label, size=18, weight=800, fill=color),
            text(x + 24, y + 72, value, size=28, weight=900, fill=INK),
            text(x + 24, y + 98, detail, size=17, weight=500, fill=MUTED),
        ]
    )


def y_map(value, min_v, max_v, top, height):
    return top + (max_v - value) / (max_v - min_v) * height


def chart_panel(rows, value_key, x0, y0, w, h, min_v, max_v, ticks, color, title, value_formatter, show_x=False, show_push_label=False):
    step = w / (len(rows) - 1)
    x_positions = [x0 + i * step for i in range(len(rows))]
    points = [(x_positions[i], y_map(float(row[value_key]), min_v, max_v, y0, h)) for i, row in enumerate(rows)]

    out = [
        rect(x0, y0, w, h, fill=PANEL, stroke="#cbd5e1", width=2, rx=0),
        rect(x_positions[8], y0, x_positions[-1] - x_positions[8], h, fill=WASH, stroke="none"),
        text(x0, y0 - 22, title, size=28, weight=900, fill=color),
    ]

    if show_push_label:
        out.append(text(x_positions[8] + 18, y0 + 32, "2024+ systems / AI operating push", size=21, weight=800, fill="#1e3a8a"))

    for tick in ticks:
        y = y_map(tick, min_v, max_v, y0, h)
        out.append(line(x0, y, x0 + w, y, stroke=GRID, width=2))
        out.append(text(x0 - 22, y + 8, value_formatter(tick), size=23, fill="#334155", anchor="end"))

    zero_in_range = min_v < 0 < max_v
    if zero_in_range:
        y = y_map(0, min_v, max_v, y0, h)
        out.append(line(x0, y, x0 + w, y, stroke="#94a3b8", width=3))
        out.append(text(x0 + w - 22, y - 12, "0% margin", size=19, fill="#64748b", anchor="end"))

    out.append(polyline(points, color))
    out.extend(circle(x, y, color) for x, y in points)

    last_x, last_y = points[-1]
    last_value = float(rows[-1][value_key])
    out.append(
        text(
            min(last_x - 8, x0 + w - 16),
            last_y - 18,
            value_formatter(last_value),
            size=25,
            weight=900,
            fill=color,
            anchor="end",
        )
    )

    if show_x:
        for i, row in enumerate(rows):
            x = x_positions[i]
            out.append(line(x, y0 + h, x, y0 + h + 10, stroke="#94a3b8", width=2))
            if row["Quarter"].endswith("Q1"):
                out.append(text(x, y0 + h + 42, row["Quarter"], size=21, fill="#334155", anchor="middle"))

    return "\n".join(out)


def main():
    with CSV_PATH.open(newline="") as f:
        rows = list(csv.DictReader(f))

    revenue_values = [float(row["Annualized revenue/FTE"]) for row in rows]
    margin_values = [float(row["Net margin %"]) for row in rows]

    x0 = 175
    plot_w = 1840
    rev_y = 310
    rev_h = 345
    margin_y = 760
    margin_h = 300

    svg = [
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{WIDTH}" height="{HEIGHT}" viewBox="0 0 {WIDTH} {HEIGHT}">',
        rect(0, 0, WIDTH, HEIGHT, fill=BG),
        rect(46, 46, WIDTH - 92, HEIGHT - 92, fill="#ffffff", stroke="#cbd5e1", width=2, rx=24),
        text(120, 118, "Heaviside Revenue/FTE + Net Margin by Quarter", size=56, weight=900),
        text(122, 165, "Internal QuickBooks P&L snapshots plus an estimated labor-spend-to-FTE model.", size=27, fill=MUTED),
        text(122, 202, "Markers are quarters. Revenue/FTE is annualized. Net margin = P&L net income / P&L revenue.", size=24, fill=MUTED),
        metric_box(1470, 88, "2023 annual read", "$55.6K/FTE", "2.6% net margin", BLUE),
        metric_box(1790, 88, "2026 Q1", "$120.1K/FTE", "17.1% net margin", ORANGE),
        chart_panel(
            rows,
            "Annualized revenue/FTE",
            x0,
            rev_y,
            plot_w,
            rev_h,
            0,
            130000,
            [0, 40000, 80000, 120000],
            BLUE,
            "Annualized revenue per FTE",
            money_axis,
            show_x=False,
            show_push_label=True,
        ),
        chart_panel(
            rows,
            "Net margin %",
            x0,
            margin_y,
            plot_w,
            margin_h,
            -20,
            30,
            [-20, -10, 0, 10, 20, 30],
            ORANGE,
            "Net margin",
            pct_axis,
            show_x=True,
        ),
        text(122, 1165, "Source: internal QuickBooks P&L snapshots in Agency Financials plus labor-spend-to-FTE model.", size=24, fill=MUTED),
        text(122, 1204, "Use as redacted directional proof. Raw QuickBooks and payroll records stay private unless reviewed live.", size=24, fill=MUTED),
        "</svg>",
    ]

    svg_text = "\n".join(svg)
    SVG_PATH.write_text(svg_text)
    HTML_PATH.write_text(
        "<!doctype html><html><head><meta charset='utf-8'>"
        "<style>html,body{margin:0;background:#f8fafc;}svg{display:block;width:2200px;height:1300px;}</style>"
        "</head><body>"
        + svg_text
        + "</body></html>"
    )
    print(SVG_PATH)
    print(HTML_PATH)
    print(f"revenue range: {min(revenue_values):.0f}-{max(revenue_values):.0f}")
    print(f"margin range: {min(margin_values):.1f}-{max(margin_values):.1f}")


if __name__ == "__main__":
    main()
