//
//  TailwindColor.swift
//
//
//  Created by Mia Yv on 2023-09-25.
//

import SwiftUI

public struct TailwindColor {
    /// Create a Color instance from a given HEX string
    ///
    /// - Parameters:
    ///   - hex: The HEX string representation of the color. It should start with a '#'. Example: "#FF5733".
    ///   - opacity: (Optional) The opacity value of the color, which should range from 0.0 (fully transparent) to 1.0 (fully opaque). Default is 1.0.
    /// - Returns: A `Color` instance corresponding to the provided HEX string.
    ///
    /// - Note: This method will trigger a runtime error if the provided HEX string is not in the correct format.
    ///
    static func create(hex: String, opacity: Double = 1.0) -> Color {
        guard hex.count == 7 else {
            fatalError("Invalid hex string format. It should be in the form '#RRGGBB'")
        }
        let hexValue = String(hex.dropFirst())
        let hexNumber = UInt64(hexValue, radix: 16) ?? 0
        let r = Double((hexNumber & 0xFF0000) >> 16) / 255.0
        let g = Double((hexNumber & 0x00FF00) >> 8) / 255.0
        let b = Double(hexNumber & 0x0000FF) / 255.0
        return Color(red: r, green: g, blue: b, opacity: opacity)
    }
}

extension TailwindColor {
    /// Slate
    public static let slate50 = TailwindColor.create(hex: "#f8fafc")
    public static let slate100 = TailwindColor.create(hex: "#f1f5f9")
    public static let slate200 = TailwindColor.create(hex: "#e2e8f0")
    public static let slate300 = TailwindColor.create(hex: "#cbd5e1")
    public static let slate400 = TailwindColor.create(hex: "#94a3b8")
    public static let slate500 = TailwindColor.create(hex: "#64748b")
    public static let slate600 = TailwindColor.create(hex: "#475569")
    public static let slate700 = TailwindColor.create(hex: "#334155")
    public static let slate800 = TailwindColor.create(hex: "#1e293b")
    public static let slate900 = TailwindColor.create(hex: "#0f172a")
    public static let slate950 = TailwindColor.create(hex: "#020617")
    /// Gray
    public static let gray50 = TailwindColor.create(hex: "#f9fafb")
    public static let gray100 = TailwindColor.create(hex: "#f3f4f6")
    public static let gray200 = TailwindColor.create(hex: "#e5e7eb")
    public static let gray300 = TailwindColor.create(hex: "#d1d5db")
    public static let gray400 = TailwindColor.create(hex: "#9ca3af")
    public static let gray500 = TailwindColor.create(hex: "#6b7280")
    public static let gray600 = TailwindColor.create(hex: "#4b5563")
    public static let gray700 = TailwindColor.create(hex: "#374151")
    public static let gray800 = TailwindColor.create(hex: "#1f2937")
    public static let gray900 = TailwindColor.create(hex: "#111827")
    public static let gray950 = TailwindColor.create(hex: "#030712")
    /// Zinc
    public static let zinc50 = TailwindColor.create(hex: "#fafafa")
    public static let zinc100 = TailwindColor.create(hex: "#f4f4f5")
    public static let zinc200 = TailwindColor.create(hex: "#e4e4e7")
    public static let zinc300 = TailwindColor.create(hex: "#d4d4d8")
    public static let zinc400 = TailwindColor.create(hex: "#a1a1aa")
    public static let zinc500 = TailwindColor.create(hex: "#71717a")
    public static let zinc600 = TailwindColor.create(hex: "#52525b")
    public static let zinc700 = TailwindColor.create(hex: "#3f3f46")
    public static let zinc800 = TailwindColor.create(hex: "#27272a")
    public static let zinc900 = TailwindColor.create(hex: "#18181b")
    public static let zinc950 = TailwindColor.create(hex: "#09090b")
    /// Neutral
    public static let neutral50 = TailwindColor.create(hex: "#fafafa")
    public static let neutral100 = TailwindColor.create(hex: "#f5f5f5")
    public static let neutral200 = TailwindColor.create(hex: "#e5e5e5")
    public static let neutral300 = TailwindColor.create(hex: "#d4d4d4")
    public static let neutral400 = TailwindColor.create(hex: "#a3a3a3")
    public static let neutral500 = TailwindColor.create(hex: "#737373")
    public static let neutral600 = TailwindColor.create(hex: "#525252")
    public static let neutral700 = TailwindColor.create(hex: "#404040")
    public static let neutral800 = TailwindColor.create(hex: "#262626")
    public static let neutral900 = TailwindColor.create(hex: "#171717")
    public static let neutral950 = TailwindColor.create(hex: "#0a0a0a")
    /// Stone
    public static let stone50 = TailwindColor.create(hex: "#fafaf9")
    public static let stone100 = TailwindColor.create(hex: "#f5f5f4")
    public static let stone200 = TailwindColor.create(hex: "#e7e5e4")
    public static let stone300 = TailwindColor.create(hex: "#d6d3d1")
    public static let stone400 = TailwindColor.create(hex: "#a8a29e")
    public static let stone500 = TailwindColor.create(hex: "#78716c")
    public static let stone600 = TailwindColor.create(hex: "#57534e")
    public static let stone700 = TailwindColor.create(hex: "#44403c")
    public static let stone800 = TailwindColor.create(hex: "#292524")
    public static let stone900 = TailwindColor.create(hex: "#1c1917")
    public static let stone950 = TailwindColor.create(hex: "#0c0a09")
    /// Red
    public static let red50 = TailwindColor.create(hex: "#fef2f2")
    public static let red100 = TailwindColor.create(hex: "#fee2e2")
    public static let red200 = TailwindColor.create(hex: "#fecaca")
    public static let red300 = TailwindColor.create(hex: "#fca5a5")
    public static let red400 = TailwindColor.create(hex: "#f87171")
    public static let red500 = TailwindColor.create(hex: "#ef4444")
    public static let red600 = TailwindColor.create(hex: "#dc2626")
    public static let red700 = TailwindColor.create(hex: "#b91c1c")
    public static let red800 = TailwindColor.create(hex: "#991b1b")
    public static let red900 = TailwindColor.create(hex: "#7f1d1d")
    public static let red950 = TailwindColor.create(hex: "#450a0a")
    /// Orange
    public static let orange50 = TailwindColor.create(hex: "#fff7ed")
    public static let orange100 = TailwindColor.create(hex: "#ffedd5")
    public static let orange200 = TailwindColor.create(hex: "#fed7aa")
    public static let orange300 = TailwindColor.create(hex: "#fdba74")
    public static let orange400 = TailwindColor.create(hex: "#fb923c")
    public static let orange500 = TailwindColor.create(hex: "#f97316")
    public static let orange600 = TailwindColor.create(hex: "#ea580c")
    public static let orange700 = TailwindColor.create(hex: "#c2410c")
    public static let orange800 = TailwindColor.create(hex: "#9a3412")
    public static let orange900 = TailwindColor.create(hex: "#7c2d12")
    public static let orange950 = TailwindColor.create(hex: "#431407")
    /// Amber
    public static let amber50 = TailwindColor.create(hex: "#fffbeb")
    public static let amber100 = TailwindColor.create(hex: "#fef3c7")
    public static let amber200 = TailwindColor.create(hex: "#fde68a")
    public static let amber300 = TailwindColor.create(hex: "#fcd34d")
    public static let amber400 = TailwindColor.create(hex: "#fbbf24")
    public static let amber500 = TailwindColor.create(hex: "#f59e0b")
    public static let amber600 = TailwindColor.create(hex: "#d97706")
    public static let amber700 = TailwindColor.create(hex: "#b45309")
    public static let amber800 = TailwindColor.create(hex: "#92400e")
    public static let amber900 = TailwindColor.create(hex: "#78350f")
    public static let amber950 = TailwindColor.create(hex: "#451a03")
    /// Yellow
    public static let yellow50 = TailwindColor.create(hex: "#fefce8")
    public static let yellow100 = TailwindColor.create(hex: "#fef9c3")
    public static let yellow200 = TailwindColor.create(hex: "#fef08a")
    public static let yellow300 = TailwindColor.create(hex: "#fde047")
    public static let yellow400 = TailwindColor.create(hex: "#facc15")
    public static let yellow500 = TailwindColor.create(hex: "#eab308")
    public static let yellow600 = TailwindColor.create(hex: "#ca8a04")
    public static let yellow700 = TailwindColor.create(hex: "#a16207")
    public static let yellow800 = TailwindColor.create(hex: "#854d0e")
    public static let yellow900 = TailwindColor.create(hex: "#713f12")
    public static let yellow950 = TailwindColor.create(hex: "#422006")
    /// Lime
    public static let lime50 = TailwindColor.create(hex: "#f7fee7")
    public static let lime100 = TailwindColor.create(hex: "#ecfccb")
    public static let lime200 = TailwindColor.create(hex: "#d9f99d")
    public static let lime300 = TailwindColor.create(hex: "#bef264")
    public static let lime400 = TailwindColor.create(hex: "#a3e635")
    public static let lime500 = TailwindColor.create(hex: "#84cc16")
    public static let lime600 = TailwindColor.create(hex: "#65a30d")
    public static let lime700 = TailwindColor.create(hex: "#4d7c0f")
    public static let lime800 = TailwindColor.create(hex: "#3f6212")
    public static let lime900 = TailwindColor.create(hex: "#365314")
    public static let lime950 = TailwindColor.create(hex: "#1a2e05")
    /// Green
    public static let green50 = TailwindColor.create(hex: "#f0fdf4")
    public static let green100 = TailwindColor.create(hex: "#dcfce7")
    public static let green200 = TailwindColor.create(hex: "#bbf7d0")
    public static let green300 = TailwindColor.create(hex: "#86efac")
    public static let green400 = TailwindColor.create(hex: "#4ade80")
    public static let green500 = TailwindColor.create(hex: "#22c55e")
    public static let green600 = TailwindColor.create(hex: "#16a34a")
    public static let green700 = TailwindColor.create(hex: "#15803d")
    public static let green800 = TailwindColor.create(hex: "#166534")
    public static let green900 = TailwindColor.create(hex: "#14532d")
    public static let green950 = TailwindColor.create(hex: "#052e16")
    /// Emerald
    public static let emerald50 = TailwindColor.create(hex: "#ecfdf5")
    public static let emerald100 = TailwindColor.create(hex: "#d1fae5")
    public static let emerald200 = TailwindColor.create(hex: "#a7f3d0")
    public static let emerald300 = TailwindColor.create(hex: "#6ee7b7")
    public static let emerald400 = TailwindColor.create(hex: "#34d399")
    public static let emerald500 = TailwindColor.create(hex: "#10b981")
    public static let emerald600 = TailwindColor.create(hex: "#059669")
    public static let emerald700 = TailwindColor.create(hex: "#047857")
    public static let emerald800 = TailwindColor.create(hex: "#065f46")
    public static let emerald900 = TailwindColor.create(hex: "#064e3b")
    public static let emerald950 = TailwindColor.create(hex: "#022c22")
    /// Teal
    public static let teal50 = TailwindColor.create(hex: "#f0fdfa")
    public static let teal100 = TailwindColor.create(hex: "#ccfbf1")
    public static let teal200 = TailwindColor.create(hex: "#99f6e4")
    public static let teal300 = TailwindColor.create(hex: "#5eead4")
    public static let teal400 = TailwindColor.create(hex: "#2dd4bf")
    public static let teal500 = TailwindColor.create(hex: "#14b8a6")
    public static let teal600 = TailwindColor.create(hex: "#0d9488")
    public static let teal700 = TailwindColor.create(hex: "#0f766e")
    public static let teal800 = TailwindColor.create(hex: "#115e59")
    public static let teal900 = TailwindColor.create(hex: "#134e4a")
    public static let teal950 = TailwindColor.create(hex: "#042f2e")
    /// Cyan
    public static let cyan50 = TailwindColor.create(hex: "#ecfeff")
    public static let cyan100 = TailwindColor.create(hex: "#cffafe")
    public static let cyan200 = TailwindColor.create(hex: "#a5f3fc")
    public static let cyan300 = TailwindColor.create(hex: "#67e8f9")
    public static let cyan400 = TailwindColor.create(hex: "#22d3ee")
    public static let cyan500 = TailwindColor.create(hex: "#06b6d4")
    public static let cyan600 = TailwindColor.create(hex: "#0891b2")
    public static let cyan700 = TailwindColor.create(hex: "#0e7490")
    public static let cyan800 = TailwindColor.create(hex: "#155e75")
    public static let cyan900 = TailwindColor.create(hex: "#164e63")
    public static let cyan950 = TailwindColor.create(hex: "#083344")
    /// Sky
    public static let sky50 = TailwindColor.create(hex: "#f0f9ff")
    public static let sky100 = TailwindColor.create(hex: "#e0f2fe")
    public static let sky200 = TailwindColor.create(hex: "#bae6fd")
    public static let sky300 = TailwindColor.create(hex: "#7dd3fc")
    public static let sky400 = TailwindColor.create(hex: "#38bdf8")
    public static let sky500 = TailwindColor.create(hex: "#0ea5e9")
    public static let sky600 = TailwindColor.create(hex: "#0284c7")
    public static let sky700 = TailwindColor.create(hex: "#0369a1")
    public static let sky800 = TailwindColor.create(hex: "#075985")
    public static let sky900 = TailwindColor.create(hex: "#0c4a6e")
    public static let sky950 = TailwindColor.create(hex: "#082f49")
    /// Blue
    public static let blue50 = TailwindColor.create(hex: "#eff6ff")
    public static let blue100 = TailwindColor.create(hex: "#dbeafe")
    public static let blue200 = TailwindColor.create(hex: "#bfdbfe")
    public static let blue300 = TailwindColor.create(hex: "#93c5fd")
    public static let blue400 = TailwindColor.create(hex: "#60a5fa")
    public static let blue500 = TailwindColor.create(hex: "#3b82f6")
    public static let blue600 = TailwindColor.create(hex: "#2563eb")
    public static let blue700 = TailwindColor.create(hex: "#1d4ed8")
    public static let blue800 = TailwindColor.create(hex: "#1e40af")
    public static let blue900 = TailwindColor.create(hex: "#1e3a8a")
    public static let blue950 = TailwindColor.create(hex: "#172554")
    /// Indigo
    public static let indigo50 = TailwindColor.create(hex: "#eef2ff")
    public static let indigo100 = TailwindColor.create(hex: "#e0e7ff")
    public static let indigo200 = TailwindColor.create(hex: "#c7d2fe")
    public static let indigo300 = TailwindColor.create(hex: "#a5b4fc")
    public static let indigo400 = TailwindColor.create(hex: "#818cf8")
    public static let indigo500 = TailwindColor.create(hex: "#6366f1")
    public static let indigo600 = TailwindColor.create(hex: "#4f46e5")
    public static let indigo700 = TailwindColor.create(hex: "#4338ca")
    public static let indigo800 = TailwindColor.create(hex: "#3730a3")
    public static let indigo900 = TailwindColor.create(hex: "#312e81")
    public static let indigo950 = TailwindColor.create(hex: "#1e1b4b")
    /// Violet
    public static let violet50 = TailwindColor.create(hex: "#f5f3ff")
    public static let violet100 = TailwindColor.create(hex: "#ede9fe")
    public static let violet200 = TailwindColor.create(hex: "#ddd6fe")
    public static let violet300 = TailwindColor.create(hex: "#c4b5fd")
    public static let violet400 = TailwindColor.create(hex: "#a78bfa")
    public static let violet500 = TailwindColor.create(hex: "#8b5cf6")
    public static let violet600 = TailwindColor.create(hex: "#7c3aed")
    public static let violet700 = TailwindColor.create(hex: "#6d28d9")
    public static let violet800 = TailwindColor.create(hex: "#5b21b6")
    public static let violet900 = TailwindColor.create(hex: "#4c1d95")
    public static let violet950 = TailwindColor.create(hex: "#2e1065")
    /// Purple
    public static let purple50 = TailwindColor.create(hex: "#faf5ff")
    public static let purple100 = TailwindColor.create(hex: "#f3e8ff")
    public static let purple200 = TailwindColor.create(hex: "#e9d5ff")
    public static let purple300 = TailwindColor.create(hex: "#d8b4fe")
    public static let purple400 = TailwindColor.create(hex: "#c084fc")
    public static let purple500 = TailwindColor.create(hex: "#a855f7")
    public static let purple600 = TailwindColor.create(hex: "#9333ea")
    public static let purple700 = TailwindColor.create(hex: "#7e22ce")
    public static let purple800 = TailwindColor.create(hex: "#6b21a8")
    public static let purple900 = TailwindColor.create(hex: "#581c87")
    public static let purple950 = TailwindColor.create(hex: "#3b0764")
    /// Fuchsia
    public static let fuchsia50 = TailwindColor.create(hex: "#fdf4ff")
    public static let fuchsia100 = TailwindColor.create(hex: "#fae8ff")
    public static let fuchsia200 = TailwindColor.create(hex: "#f5d0fe")
    public static let fuchsia300 = TailwindColor.create(hex: "#f0abfc")
    public static let fuchsia400 = TailwindColor.create(hex: "#e879f9")
    public static let fuchsia500 = TailwindColor.create(hex: "#d946ef")
    public static let fuchsia600 = TailwindColor.create(hex: "#c026d3")
    public static let fuchsia700 = TailwindColor.create(hex: "#a21caf")
    public static let fuchsia800 = TailwindColor.create(hex: "#86198f")
    public static let fuchsia900 = TailwindColor.create(hex: "#701a75")
    public static let fuchsia950 = TailwindColor.create(hex: "#4a044e")
    /// Pink
    public static let pink50 = TailwindColor.create(hex: "#fdf2f8")
    public static let pink100 = TailwindColor.create(hex: "#fce7f3")
    public static let pink200 = TailwindColor.create(hex: "#fbcfe8")
    public static let pink300 = TailwindColor.create(hex: "#f9a8d4")
    public static let pink400 = TailwindColor.create(hex: "#f472b6")
    public static let pink500 = TailwindColor.create(hex: "#ec4899")
    public static let pink600 = TailwindColor.create(hex: "#db2777")
    public static let pink700 = TailwindColor.create(hex: "#be185d")
    public static let pink800 = TailwindColor.create(hex: "#9d174d")
    public static let pink900 = TailwindColor.create(hex: "#831843")
    public static let pink950 = TailwindColor.create(hex: "#500724")
    /// Rose
    public static let rose50 = TailwindColor.create(hex: "#fff1f2")
    public static let rose100 = TailwindColor.create(hex: "#ffe4e6")
    public static let rose200 = TailwindColor.create(hex: "#fecdd3")
    public static let rose300 = TailwindColor.create(hex: "#fda4af")
    public static let rose400 = TailwindColor.create(hex: "#fb7185")
    public static let rose500 = TailwindColor.create(hex: "#f43f5e")
    public static let rose600 = TailwindColor.create(hex: "#e11d48")
    public static let rose700 = TailwindColor.create(hex: "#be123c")
    public static let rose800 = TailwindColor.create(hex: "#9f1239")
    public static let rose900 = TailwindColor.create(hex: "#881337")
    public static let rose950 = TailwindColor.create(hex: "#4c0519")
    /// Groups By Color Type
    public static let slate: [Color] = [slate50, slate100, slate200, slate300, slate400, slate500, slate600, slate700, slate800, slate900, slate950]
    public static let gray: [Color] = [gray50, gray100, gray200, gray300, gray400, gray500, gray600, gray700, gray800, gray900, gray950]
    public static let zinc: [Color] = [zinc50, zinc100, zinc200, zinc300, zinc400, zinc500, zinc600, zinc700, zinc800, zinc900, zinc950]
    public static let neutral: [Color] = [neutral50, neutral100, neutral200, neutral300, neutral400, neutral500, neutral600, neutral700, neutral800, neutral900, neutral950]
    public static let stone: [Color] = [stone50, stone100, stone200, stone300, stone400, stone500, stone600, stone700, stone800, stone900, stone950]
    public static let red: [Color] = [red50, red100, red200, red300, red400, red500, red600, red700, red800, red900, red950]
    public static let orange: [Color] = [orange50, orange100, orange200, orange300, orange400, orange500, orange600, orange700, orange800, orange900, orange950]
    public static let amber: [Color] = [amber50, amber100, amber200, amber300, amber400, amber500, amber600, amber700, amber800, amber900, amber950]
    public static let yellow: [Color] = [yellow50, yellow100, yellow200, yellow300, yellow400, yellow500, yellow600, yellow700, yellow800, yellow900, yellow950]
    public static let lime: [Color] = [lime50, lime100, lime200, lime300, lime400, lime500, lime600, lime700, lime800, lime900, lime950]
    public static let green: [Color] = [green50, green100, green200, green300, green400, green500, green600, green700, green800, green900, green950]
    public static let emerald: [Color] = [emerald50, emerald100, emerald200, emerald300, emerald400, emerald500, emerald600, emerald700, emerald800, emerald900, emerald950]
    public static let teal: [Color] = [teal50, teal100, teal200, teal300, teal400, teal500, teal600, teal700, teal800, teal900, teal950]
    public static let cyan: [Color] = [cyan50, cyan100, cyan200, cyan300, cyan400, cyan500, cyan600, cyan700, cyan800, cyan900, cyan950]
    public static let sky: [Color] = [sky50, sky100, sky200, sky300, sky400, sky500, sky600, sky700, sky800, sky900, sky950]
    public static let blue: [Color] = [blue50, blue100, blue200, blue300, blue400, blue500, blue600, blue700, blue800, blue900, blue950]
    public static let indigo: [Color] = [indigo50, indigo100, indigo200, indigo300, indigo400, indigo500, indigo600, indigo700, indigo800, indigo900, indigo950]
    public static let violet: [Color] = [violet50, violet100, violet200, violet300, violet400, violet500, violet600, violet700, violet800, violet900, violet950]
    public static let purple: [Color] = [purple50, purple100, purple200, purple300, purple400, purple500, purple600, purple700, purple800, purple900, purple950]
    public static let fuchsia: [Color] = [fuchsia50, fuchsia100, fuchsia200, fuchsia300, fuchsia400, fuchsia500, fuchsia600, fuchsia700, fuchsia800, fuchsia900, fuchsia950]
    public static let pink: [Color] = [pink50, pink100, pink200, pink300, pink400, pink500, pink600, pink700, pink800, pink900, pink950]
    public static let rose: [Color] = [rose50, rose100, rose200, rose300, rose400, rose500, rose600, rose700, rose800, rose900, rose950]
}

