[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
# TextStyling
Helps you manage text styles in your app.

## Describing text styles
Create an `enum` that conforms to `TextStylingEnum` with cases for different text styles used throughout your app. Example:
```swift
enum TextStyle: String, TextStylingEnum {
    case header
    case body
    case footer
    
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
To access 

# Installation
Using [Carthage](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application). Add the following line to your Cartfile:
```
github "Trafi/TextStyling"
```