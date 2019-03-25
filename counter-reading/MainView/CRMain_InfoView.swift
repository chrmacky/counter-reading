//
//  CRMain_InfoView.swift
//  counter-reading
//
//  Created by Christoph Lemke on 17.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

class CRMain_InfoView: UIView{
    
    @IBOutlet weak var shareView: UIProgressView!
    @IBOutlet weak var countShareLabel: UILabel!
    
    private func setcountShareValue(countValue: Int){
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
