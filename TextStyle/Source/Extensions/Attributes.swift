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
        attributes[.paragraphStyle] = alignment.flatMap { alignment in
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = alignment
            return paragraphStyle
        }
        
        return attributes
    }
}
