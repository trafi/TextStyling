//
//  TextStyle.swift
//  TextStyle
//
//  Created by Domas on 13/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import TextStyle

extension TextStyle {
    static let header = TextStyle()
        .with(font: .boldSystemFontOfSize(18))
        .with(color: .redColor())
        .with(alignment: .Center)
    
    static let body = TextStyle()
        .with(font: .systemFontOfSize(16))
    
    static let footer = TextStyle()
        .with(font: .italicSystemFontOfSize(12))
        .with(color: .grayColor())
}

extension TextStyle: IBInspectable {
    public static var stylesDictionary: [String : TextStyle] {
        return [
            "header": .header,
            "body":   .body,
            "footer": .footer
        ]
    }
}
