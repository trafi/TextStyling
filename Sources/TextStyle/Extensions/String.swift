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
        let string = textStyle.uppercased ? self.uppercased() : self
        return NSAttributedString(string: string, attributes: textStyle.attributes)
    }
    public func with(textStyle: TextStyle, forRange range: NSRange) -> NSAttributedString {
        return NSAttributedString(string: self).with(textStyle: textStyle, forRange: range)
    }
}

extension NSAttributedString {
    public func with(textStyle: TextStyle) -> NSAttributedString {
        return with(textStyle: textStyle, forRange: NSMakeRange(0, (string as NSString).length))
    }
    public func with(textStyle: TextStyle, forRange range: NSRange) -> NSAttributedString {
        let mutable = self as? NSMutableAttributedString ?? NSMutableAttributedString(attributedString: self)

        if textStyle.uppercased {
            mutable.mutableString.setString(string.uppercased())
        }

        mutable.addAttributes(textStyle.attributes, range: range)
        return mutable
    }
}
