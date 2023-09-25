<p align="center">
  <img src="https://github.com/infinity-ooo/tailwind-color/assets/9530963/2207bcab-57b9-47a0-b5a8-e48ebbd51e5c" alt="tailwind-color" /> 
</p>

## Install

Add `TailwindColor` to your Swift project using Swift Package Manager:

```swift
.package(url: "https://github.com/infinity-ooo/tailwind-color.git", from: "1.0.0")
```

## Use

```swift
import TailwindColor

Text("Hello, TailwindColor!")
    .foregroundStyle(TailwindColor.blue600)
    
// or you can use the shorthand `TC` for TailwindColor 
Text("Hello, TailwindColor!")
    .foregroundStyle(TC.blue600)
```

## TailwindColor Palette

Every color constant within TailwindColor is a valid Color instance:

![color-palette](https://github.com/infinity-ooo/tailwind-color/assets/9530963/eccce543-6a1c-4372-825d-a83653f33562)
