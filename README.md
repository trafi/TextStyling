[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

# TextStyling
Helps you manage text styles in your app.

## Describing text styles
Extend `TextStyle` with `static` variables for different text styles used in your app:
```swift
extension TextStyle {
    static let header = TextStyle(
        font: .boldSystemFontOfSize(18),
        color: .redColor()
    )
    static let body = TextStyle(
        font: .systemFontOfSize(16),
        color: .blackColor()
    )
    static let footer = TextStyle(
        font: .italicSystemFontOfSize(12),
        color: .darkGrayColor()
    )
}
```
# Usage
## From code
There's a `set(textStyle:)` defined for text-based UI elements. Just call it providing one of your styles.
```swift
let titleLabel = UILabel()
titleLabel.set(textStyle: .header)
```
## From Interface Builder
Extend `TextStyle` conforming to `IBInspectable` protocol:
```swift
extension TextStyle: IBInspectable {
    static func style(withName name: String) -> TextStyle?
        switch name {
        case "header":
            return .header
        case "body':
            return .body
        case "footer":
            return .footer
        defatult:
            return nil
        }
    }
}
```
In the Interface Builder set `Text Style` to mathc your style's name.

To see style changes right in the Interface Builder use `Designable` to UI elements classes. (i.e. `UILabelDesignable`).

# Installation
Using [Carthage](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application). Add the following line to your Cartfile:
```
github "Trafi/TextStyling"
```
