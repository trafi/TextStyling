//
//  ViewController.swift
//  TextStyleExample
//
//  Created by Domas on 13/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit
import TextStyle

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel! {
        didSet {
            label.set(textStyle: TextStyle.header.with(color: .blueColor()))
            label.text = "From code"
        }
    }
    
    @IBOutlet var attributedLabel: UILabel! {
        didSet {
            let style = TextStyle()
                .with(font: .italicSystemFontOfSize(18))
                .with(color: .grayColor())
                .with(alignment: .Right)
            
            attributedLabel.attributedText = "Attributed string\nFrom code".with(textStyle: style)
        }
    }
    
}

