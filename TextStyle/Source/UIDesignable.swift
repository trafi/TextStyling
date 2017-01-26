//
//  IBInspectable.swift
//  TextStyle
//
//  Created by Domas on 01/26/2017.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

/// `UILabel` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UILabelDesignable: UILabel {}

/// `UITextField` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UITextFieldDesignable: UILabel {}

/// `UITextView` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UITextViewDesignable: UILabel {}

/// `Button` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UIButtonDesignable: UILabel {}
