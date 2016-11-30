//
//  String.swift
//  TextStyle
//
//  Created by Domas on 13/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

private extension TextStyle {
    var attributes: [String: AnyObject] {
        
        var attributes = [String: AnyObject]()
        
        attributes[NSForegroundColorAttributeName] = color
        attributes[NSFontAttributeName] = font
        attributes[NSParagraphStyleAttributeName] = alignment.flatMap { alignment in
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = alignment
            return paragraphStyle
        }
        
        return attributes
    }
}

extension String {
    public func with(textStyle textStyle: TextStyle) -> NSAttributedString {
        return NSAttributedString(string: self, attributes: textStyle.attributes)
    }
    public func with(textStyle textStyle: TextStyle, forRange range: NSRange) -> NSAttributedString {
        return NSAttributedString(string: self).with(textStyle: textStyle, forRange: range)
    }
}

extension NSAttributedString {
    public func with(textStyle textStyle: TextStyle) -> NSAttributedString {
        return string.with(textStyle: textStyle)
    }
    public func with(textStyle textStyle: TextStyle, forRange range: NSRange) -> NSAttributedString {
        let mutable = self as? NSMutableAttributedString ?? NSMutableAttributedString(attributedString: self)
        mutable.setAttributes(textStyle.attributes, range: range)
        return mutable
    }
}
