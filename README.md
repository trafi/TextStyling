[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
# TextStyling
Helps you manage text styles in your app.

## Describing text styles
Create an `enum` with cases for different text styles used throughout your app. And conform to `TextStyling` protocol. Example:
```swift
enum TextStyle {
    case header
    case body
    case footer
}

extension TextStyle: TextStyling {
    var font: UIFont {
        switch self {
        case .header:
            return .boldSystemFont(ofSize: 18)
        case .body:
            return .systemFont(ofSize: 16)
        case .footer:
            return .italicSystemFont(ofSize: 12)
        }
    }
    
    var color: UIColor {
        switch self {
        case .header:
            return .red
        case .body: fallthrough
        case .footer:
            return .black
        }
    }
}
```
# Usage
## From code
There's a `style(to:)` defined for text-based UI elements. Just call it providing one of your styles.
```swift
let titleLabel = UILabel()
titleLabel.style(to: .header)
```
## From Interface Builder
**Make sure** your style enum conforms to `TextStylingEnum` protocol and you have extended `TextStylingSettings`:
```swift
// 1. Set raw value of your enum to `String`
enum TextStyle: String {
    ...
}
// 2. Change protocol to conform to `TextStylingEnum` from `TextStyling`
extension TextStyle: TextStylingEnum {
    ...
}
// 3. Extend `TextStylingSettings` with your enum type
extension TextStylingSettings: CustomTextStyling {
    static var customEnumType: TextStylingEnum.Type {
        return TextStyle.self
    }
}
```
In the Interface Builder set `Text Style` to mathce your enum case's name.

To see style changes right in the Interface Builder append `Designable` to UI elements class. (i.e. `UILableDesignable`).

# Installation
Using [Carthage](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application). Add the following line to your Cartfile:
```
github "Trafi/TextStyling"
```
