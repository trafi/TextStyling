//
//  UILabel.swift
//  TextStyle
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

// MARK: TextStylable

extension UILabel: TextStylable {
    public func set(textStyle: TextStyle) {
        if let textColor = textStyle.color {
            self.textColor = textColor
        }
        if let font = textStyle.font {
            self.font = font
        }
        if let textAlignment = textStyle.paragraphAttributes[\.alignment] {
            self.textAlignment = textAlignment
        }
        validateAttributes(of: textStyle)
    }

}

// MARK: Interface Builder

extension UILabel {
    var textStyle: String {
        get { return "" }
        set { set(textStyle: newValue) }
    }
}
