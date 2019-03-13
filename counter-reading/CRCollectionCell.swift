//
//  CRCollectionCell.swift
//  counter-reading
//
//  Created by Christoph Lemke on 04.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

class CRCollectionCell: UICollectionViewCell {

    //MARK: Properties
    private let cornerRadius: CGFloat = 12.0
//    public private(set) var id: Int64?
    
    @IBOutlet weak var counterLocation: UILabel!
    @IBOutlet weak var counterNumber: UILabel!
    @IBOutlet weak var counterLastUpdate: UILabel!
    @IBOutlet weak var counterCellView: UIView!
    
    private var _locationName: String? {
        didSet {
            counterLocation.text = _locationName
        }
    }
    
    private var _lastUpdate: String? {
        didSet {
            counterNumber.text = _lastUpdate
        }
    }
    
    private var _counterNumber: String? {
        didSet {
            counterNumber.text = _counterNumber
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.clear
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 3.0, height: 5.0)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 4.0
        self.layer.masksToBounds = false
        counterCellView.layer.cornerRadius = cornerRadius
        counterCellView.layer.masksToBounds = true
    }

    public func initCell(location: String?, lastUpdate: String?, counterNumber: String?){
        _locationName = location
        _lastUpdate = lastUpdate
        _counterNumber = counterNumber
    }
}
