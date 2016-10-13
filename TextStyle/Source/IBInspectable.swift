//
//  IBInspectable.swift
//  TextStyle
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import Foundation

/**
 Makes your text styles accessible from Interface Builder.
 
 ## Implementation
 
     extension TextStyle: IBInspectable {
         static var stylesDictionary: [String : TextStyle] {
             return [
                 "header": .header,
                 "body":   .body,
                 "footer": .footer
             ]
         }
     }

 */
public protocol IBInspectable {
    static var stylesDictionary: [String: TextStyle] { get }
}

extension TextStylable {
    func set(textStyleIBString string: String) {
        guard let textStyle = (TextStyle.self as? IBInspectable.Type)?.stylesDictionary[string] else { return }
        set(textStyle: textStyle)
    }
}
