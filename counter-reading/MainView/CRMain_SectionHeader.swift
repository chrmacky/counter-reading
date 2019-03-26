//
//  CRMain_SectionHeader.swift
//  counter-reading
//
//  Created by Christoph Lemke on 17.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

class CRMain_SectionHeader: UIView {
   

    @IBOutlet weak private var sectionHeaderTitle: UILabel!
    
    public var controller: CRMainScreenViewController?

    public var title: String? {
        didSet{
            sectionHeaderTitle.text = title
        }
    }
    
}
