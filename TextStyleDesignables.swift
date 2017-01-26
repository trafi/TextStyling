//
//  TextStyleDesignables.swift
//  TextStyle
//
//  Created by Domas on 01/26/2017.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit
import TextStyle

/// `UILabel` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UILabelDesignable: UILabel, IBTextStylable {
    @IBInspectable public var textStyle: String {
        get { return "" }
        set { set(textStyleIBString: newValue) }
    }
}

/// `UITextField` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UITextFieldDesignable: UITextField, IBTextStylable {
    @IBInspectable public var textStyle: String {
        get { return "" }
        set { set(textStyleIBString: newValue) }
    }
}

/// `UITextView` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UITextViewDesignable: UITextView, IBTextStylable {
    @IBInspectable public var textStyle: String {
        get { return "" }
        set { set(textStyleIBString: newValue) }
    }
}

/// `Button` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UIButtonDesignable: UIButton, IBTextStylable {
    @IBInspectable public var textStyle: String {
        get { return "" }
        set { set(textStyleIBString: newValue) }
    }
}
