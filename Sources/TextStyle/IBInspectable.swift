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
    func set(textStyle key: String) {
        guard let textStyle = (TextStyle.self as? IBInspectable.Type)?.stylesDictionary[key] else { return }
        set(textStyle: textStyle)
    }
}

/**
 Makes your text styles accessible from Interface Builder.
 
 ## Implementation
 
     @IBDesignable public class UILabelDesignable: UILabel, IBTextStylable {
         @IBInspectable public var textStyle: String {
             get { return "" }
             set { set(textStyleIBString: newValue) }
         }
     }
 
 */
public protocol IBTextStylable: TextStylable {
    var textStyle: String { get set }
    func set(textStyleIBString textStyleString: String)
}
public extension IBTextStylable {
    func set(textStyleIBString textStyleString: String) {
        set(textStyle: textStyleString)
    }
}
