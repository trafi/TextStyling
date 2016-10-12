//
//  UIButton.swift
//  TextStyling
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
            guard let style = TextStylingSettings.enumType?.init(rawValue: newValue) else { return }
            self.style(to: style)
        }
    }
    #endif
    
    func style(to textStyle: TextStyling) {
        setTitleColor(textStyle.color, forState: .Normal)
        titleLabel?.style(to: textStyle)
    }
}

/// `Button` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UIButtonDesignable: UILabel {}
