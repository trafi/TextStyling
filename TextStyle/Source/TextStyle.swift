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
    var alignment: NSTextAlignment?
    var lineHeight: CGFloat?
    var uppercased: Bool = false
    
    public init(){}
}

public extension TextStyle {
    private func with(_ changes: (inout TextStyle) -> ()) -> TextStyle {
        var changedTextStyle = self
        changes(&changedTextStyle)
        return changedTextStyle
    }
    
    func with(font: UIFont) -> TextStyle {
        return with({ $0.font = font })
    }
    func with(color: UIColor) -> TextStyle {
        return with({ $0.color = color })
    }
    func with(alignment: NSTextAlignment) -> TextStyle {
        return with({ $0.alignment = alignment })
    }
    func with(lineHeight: CGFloat) -> TextStyle {
        return with({ $0.lineHeight = lineHeight })
    }
    func with(uppercased: Bool) -> TextStyle {
        return with({ $0.uppercased = uppercased })
    }
}
