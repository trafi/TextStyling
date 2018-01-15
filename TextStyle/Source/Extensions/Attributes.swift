//
//  Attributes.swift
//  TextStyle
//
//  Created by Domas on 30/11/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

extension TextStyle {
    public var attributes: [NSAttributedStringKey: AnyObject] {
        
        var attributes = [NSAttributedStringKey: AnyObject]()
        
        attributes[.foregroundColor] = color
        attributes[.font] = font
        attributes[.paragraphStyle] = paragraphStyle
        
        return attributes
    }

    private var paragraphStyle: NSMutableParagraphStyle? {
        if lineHeight == nil && alignment == nil {
            return nil
        }

        let paragraphStyle = NSMutableParagraphStyle()

        if let alignment = alignment {
            paragraphStyle.alignment = alignment
        }

        if let lineHeight = lineHeight {
            paragraphStyle.minimumLineHeight = lineHeight
            paragraphStyle.maximumLineHeight = lineHeight
        }

        return paragraphStyle
    }
}
