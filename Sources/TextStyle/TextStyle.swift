//
//  TextStyle.swift
//  TextStyle
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

/**
 Used to style UI elements using `set(textStyle:)` method.
 
 ## Describing styles
 
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
 
*/
public struct TextStyle {
    var font: UIFont?
    var color: UIColor?
    var uppercased: Bool = false
    var paragraphAttributes: [ReferenceWritableKeyPathSetter<NSMutableParagraphStyle>] = []
    var stringAttributes: [NSAttributedString.Key: Any] = [:]

    public init(){}
}

public extension TextStyle {
    private func with(_ changes: (inout TextStyle) -> ()) -> TextStyle {
        var changedTextStyle = self
        changes(&changedTextStyle)
        return changedTextStyle
    }
    
    func with(font: UIFont) -> TextStyle {
        with { $0.font = font }
    }
    func with(color: UIColor) -> TextStyle {
        with { $0.color = color }
    }
    func with(alignment: NSTextAlignment) -> TextStyle {
        with(\.alignment, alignment)
    }
    func with(uppercased: Bool) -> TextStyle {
        with { $0.uppercased = uppercased }
    }
    func with(lineHeight: CGFloat) -> TextStyle {
        self
            .with(\.minimumLineHeight, lineHeight)
            .with(\.maximumLineHeight, lineHeight)
    }
    func with(_ key: NSAttributedString.Key, _ value: Any) -> TextStyle {
        with { $0.stringAttributes[key] = value }
    }
    func with<T>(_ keyPath: ReferenceWritableKeyPath<NSMutableParagraphStyle, T>, _ value: T) -> TextStyle {
        with { $0.paragraphAttributes.append(.init(keyPath: keyPath, value: value)) }
    }
}
