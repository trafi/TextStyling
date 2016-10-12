//
//  TextStyling.swift
//  TextStyling
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

/// Used to set styles to UI elements using `style(to:)` method.
public protocol TextStyling {
    var font: UIFont { get }
    var color: UIColor { get }
}

/**
 ## Usage
 
 - **Must** extend `TextStylingEnum` conforming to `CustomTextStyling` protocol.

 - Set style by it's raw value from Interface Builder.
 
 - Set style directly to UI elements using `style(to:)` method.
 
 ## Implementeation example
 
     enum TextStyle: String, TextStylingEnum {
         case header
         case body
         case footer

         var font: UIFont {
             switch self {
             case .header:
                 return .boldSystemFont(ofSize: 18)
             case .body:
                 return .systemFont(ofSize: 16)
             case .footer:
                 return .italicSystemFont(ofSize: 12)
             }
         }

         var color: UIColor {
             switch self {
             case .header:
                 return .red
             case .body: fallthrough
             case .footer:
                 return .black
             }
         }
     }
 */
public protocol TextStylingEnum: TextStyling {
    init?(rawValue: String)
    var rawValue: String { get }
}
