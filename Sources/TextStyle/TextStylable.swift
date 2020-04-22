//
//  TextStylable.swift
//  TextStyle
//
//  Created by Domas on 13/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import Foundation

public protocol TextStylable {
    func set(textStyle: TextStyle)
}

extension TextStylable {

    func validateAttributes(of textStyle: TextStyle) {

        if textStyle.paragraphAttributes.contains(where: { $0[\.alignment] != nil }) {
            print("Setting `paragraphAttributes` directly on `\(type(of: self))` not supported, use `String().with(textStyle: TextStyle) -> NSAttributedString`")
        }

        if !textStyle.stringAttributes.isEmpty {
            print("Setting `stringAttributes` directly on `\(type(of: self))` not supported, use `String().with(textStyle: TextStyle) -> NSAttributedString`")
        }

        if textStyle.uppercased == true {
            print("Setting `uppercased` directly on `\(type(of: self))` not supported, use `String().with(textStyle: TextStyle) -> NSAttributedString`")
        }
    }
}
