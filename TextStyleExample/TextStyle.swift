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
        .with(font: .boldSystemFont(ofSize: 18))
        .with(color: .red)
        .with(alignment: .center)
    
    static let body = TextStyle()
        .with(font: .systemFont(ofSize: 16))
    
    static let footer = TextStyle()
        .with(font: .italicSystemFont(ofSize: 12))
        .with(color: .gray)
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
