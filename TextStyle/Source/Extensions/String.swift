//
//  String.swift
//  TextStyle
//
//  Created by Domas on 13/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import Foundation

extension String {
    public func with(textStyle: TextStyle) -> NSAttributedString {
        return NSAttributedString(string: self, attributes: textStyle.attributes)
    }
    public func with(textStyle: TextStyle, forRange range: NSRange) -> NSAttributedString {
        return NSAttributedString(string: self).with(textStyle: textStyle, forRange: range)
    }
}

extension NSAttributedString {
    public func with(textStyle: TextStyle) -> NSAttributedString {
        return string.with(textStyle: textStyle)
    }
    public func with(textStyle: TextStyle, forRange range: NSRange) -> NSAttributedString {
        let mutable = self as? NSMutableAttributedString ?? NSMutableAttributedString(attributedString: self)
        mutable.setAttributes(textStyle.attributes, range: range)
        return mutable
    }
}
