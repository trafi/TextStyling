//
//  UITextView.swift
//  TextStyle
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

// MARK: TextStylable

extension UITextView: TextStylable {
    public func set(textStyle textStyle: TextStyle) {
        if let textColor = textStyle.color {
            self.textColor = textColor
        }
        if let font = textStyle.font {
            self.font = font
        }
        if let textAlignment = textStyle.alignment {
            self.textAlignment = textAlignment
        }
    }
}

// MARK: Interface Builder

public extension UITextView {
    #if TARGET_INTERFACE_BUILDER
    @IBInspectable var textStyle: String {
        get { return "" }
        set { set(textStyleIBString: newValue) }
    }
    #else
    internal var textStyle: String {
        get { return "" }
        set { set(textStyleIBString: newValue) }
    }
    #endif
}
