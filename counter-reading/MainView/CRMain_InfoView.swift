//
//  CRMain_InfoView.swift
//  counter-reading
//
//  Created by Christoph Lemke on 17.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

class CRMain_InfoView: UIView{
    
    @IBOutlet weak private var shareView: UIProgressView!
    @IBOutlet weak var countShareLabel: UILabel!
    
    
    // TODO: change the view of progressview with following attributes
    /**
     shareView.layer.cornerRadius = 4
     shareView.transform = shareView.transform.scaledBy(x: 1, y: 4)
     shareView.clipsToBounds = true
     */
    
    
    public var countValue: Int? {
        didSet {
           setCountShareValue(countValue: countValue!)
        }
    }
    
    
    private func setCountShareValue(countValue: Int){
        shareView.layer.cornerRadius = 4
        shareView.transform = shareView.transform.scaledBy(x: 1, y: 4)
        shareView.clipsToBounds = true
        
        if countValue > 0 {
            countShareLabel.text = "\(countValue) Zähleranfragen"
            shareView.progress = 1.0
        }
        else {
            countShareLabel.text = "keine Zähleranfragen"
            shareView.progress = 0.0
        }
    }
}
