//
//  TextStylingSettings.swift
//  TextStyling
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import Foundation

/// Extend it conforming to `CustomTextStyling` to enable setting `TextStyleEnum` from Interface Builder.
public enum TextStylingSettings {
    static var enumType: TextStylingEnum.Type? {
        return (self as? CustomTextStyling.Type)?.customEnumType ?? nil
    }
}

/**
 Links your `TextStylingEnum` with UI elements styling from Interface Builder.
 
 ## Usage
 
     extension TextStylingSettings: CustomTextStyling {
         static var customEnumType: TextStylingEnum.Type {
             return TextStyle.self
         }
     }

 */
public protocol CustomTextStyling {
    static var customEnumType: TextStylingEnum.Type { get }
}
