//
//  Attributes.swift
//  TextStyle
//
//  Created by Domas on 30/11/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

extension TextStyle {
    public var attributes: [String: AnyObject] {
        
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
