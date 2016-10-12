//
//  TextStyle.swift
//  TextStyle
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

/**
 Used to style UI elements using `set(textStyle:)` method.
 
 ## Describing styles
 
     extension TextStyle {
         static let header = TextStyle(
             font: .boldSystemFontOfSize(18),
             color: .redColor()
         )
         static let body = TextStyle(
             font: .systemFontOfSize(16),
             color: .blackColor()
         )
         static let footer = TextStyle(
             font: .italicSystemFontOfSize(12),
             color: .darkGrayColor()
         )
     }
 
*/
public struct TextStyle {
    let font: UIFont
    let color: UIColor
}
