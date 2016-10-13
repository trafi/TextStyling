//
//  UIButton.swift
//  TextStyle
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

public extension UIButton {
    #if TARGET_INTERFACE_BUILDER
    @IBInspectable var textStyle: String {
        get { return "" }
        set {
            guard let textStyle = (TextStyle.self as? IBInspectable.Type)?.stylesDictionary[newValue] else { return }
            set(textStyle: textStyle)
        }
    }
    #endif
    
    func set(textStyle textStyle: TextStyle) {
        if let color = textStyle.color {
            setTitleColor(color, forState: .Normal)
        }
        titleLabel?.set(textStyle: textStyle)
    }
}

/// `Button` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UIButtonDesignable: UILabel {}
