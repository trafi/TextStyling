//
//  Attributes.swift
//  TextStyle
//
//  Created by Domas on 30/11/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

extension TextStyle {
    public var attributes: [NSAttributedString.Key: Any] {
        
        var attributes = stringAttributes
        
        attributes[.foregroundColor] = color
        attributes[.font] = font
        attributes[.paragraphStyle] = paragraphStyle
        
        return attributes
    }

    private var paragraphStyle: NSMutableParagraphStyle? {

        guard !paragraphAttributes.isEmpty else { return nil }

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphAttributes.forEach { $0.write(paragraphStyle) }

        return paragraphStyle
    }
}
