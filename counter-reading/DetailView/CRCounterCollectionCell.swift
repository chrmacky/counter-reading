//
//  CRCounterCollectionCell.swift
//  counter-reading
//
//  Created by Christoph Lemke on 11.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

class CRCounterCollectionCell: UICollectionViewCell {
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var labelConsumption: UILabel!
    @IBOutlet weak var labelLastCount: UILabel!
    @IBOutlet weak var labelMaxCount: UILabel!
    @IBOutlet weak var labelLastUpdate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
