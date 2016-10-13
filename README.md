[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

# TextStyle
Helps you manage text styles in your app.

## Describing text styles
Extend `TextStyle` with `static` variables for different text styles used in your app:
```swift
extension TextStyle {
    static let header = TextStyle()
        .with(font: .boldSystemFontOfSize(18))
        .with(color: .redColor())
        .with(alignment: .Center)
    
    static let body = TextStyle()
        .with(font: .systemFontOfSize(16))
    
    static let footer = TextStyle()
        .with(font: .italicSystemFontOfSize(12))
        .with(color: .grayColor())
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
        case "body":
            return .body
        case "footer":
            return .footer
        defatult:
            return nil
        }
    }
}
```
In the Interface Builder set `Text Style` to match your style's name.

To see style changes right in the Interface Builder use `Designable` UI elements classes. (i.e. `UILabelDesignable`).

# Installation
Using [Carthage](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application). Add the following line to your Cartfile:
```
github "Trafi/TextStyle"
```
