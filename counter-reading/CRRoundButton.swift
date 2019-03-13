//
//  CRRoundButton.swift
//  counter-reading
//
//  Created by Christoph Lemke on 05.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit
// quelle
// https://blog.supereasyapps.com/how-to-create-round-buttons-using-ibdesignable-on-ios-11/

// IBDesignable its allow the Storyboard UI to see the Costum UI Button
@IBDesignable class CRRoundButton: UIButton {
    
    // for programmatically created buttons
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    //for Storyboard/.xib created buttons
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    //is called within the Storyboard editor itself for rendering @IBDesignable controls
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit() {
        refreshCorners(value: cornerRadius)
    }
    
    // update the corner radius
    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
    }
    
    // @IBInspectable variables are exposed to the Storyboard UI, which allows you to change these properties via the "Attributes Inspector" when editing a RoundButton
    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }
}
