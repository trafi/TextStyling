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
         static func style(withName name: String) -> TextStyle?
             switch name {
             case "header":
                 return .header
             case "body":
                 return .body
             case "footer":
                 return .footer
             defatult:
                 return nil
             }
         }
     }

 */
public protocol IBInspectable {
    static func style(withName name: String) -> TextStyle?
}
