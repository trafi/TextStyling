//
//  String.swift
//  TextStyle
//
//  Created by Domas on 13/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

// MARK: TextStylable

extension String: TextStylable {
    public func set(textStyle textStyle: TextStyle) -> NSAttributedString {
        var attributes = [String: AnyObject]()
        if let textColor = textStyle.color {
            attributes[NSForegroundColorAttributeName] = textColor
        }
        if let font = textStyle.font {
            attributes[NSFontAttributeName] = font
        }
        if let alignment = textStyle.alignment {
            let style = NSMutableParagraphStyle()
            style.alignment = alignment
            attributes[NSParagraphStyleAttributeName] = style
        }
        return NSAttributedString(string: self, attributes: attributes)
    }
}
