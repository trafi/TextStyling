//
//  UIButton.swift
//  TextStyle
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

// MARK: TextStylable

extension UIButton: TextStylable {
    public func set(textStyle textStyle: TextStyle) {
        if let color = textStyle.color {
            setTitleColor(color, forState: .Normal)
        }
        titleLabel?.set(textStyle: textStyle)
    }
}

// MARK: Interface Builder

extension UIButton {
    var textStyle: String {
        get { return "" }
        set { set(textStyle: newValue) }
    }
}
