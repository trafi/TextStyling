//
//  TextStylable.swift
//  TextStyle
//
//  Created by Domas on 13/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import Foundation

public protocol TextStylable {
    associatedtype ReturnType
    func set(textStyle textStyle: TextStyle)
}
