//
//  CRMainStart_Row.swift
//  counter-reading
//
//  Created by Christoph Lemke on 24.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

class CRMainStart_Row: UIView, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var placeholderImage: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    public var header: CRMain_SectionHeader?
    public var layoutHeight: NSLayoutConstraint?
    
    private var MAXCELLSIZE : CGFloat = 200 // must be update to size an iphone display
    
    var data: [CRBaseModel]? {
        didSet {
            // calculate the cell size in seperated func
            calculateRowSize(self.bounds.size)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "CRMain_CollectionCell", bundle: nil), forCellWithReuseIdentifier: "CRMain_CollectionCell")
    }
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if data != nil {
            data?.count // TODO it can be te wrong value of count
        }
        return 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CRMain_CollectionCell", for: indexPath) as!  CRMain_CollectionCell
        guard data != nil else {return cell}
        if let user = data![indexPath.item] as? CRUser {
            var location: String = ""
            var counterReader: Int = user.userCounter.count
            var maxDate: String = ""
            for valueDate in user.userCounter {
                for value in valueDate.counterValues {
                    if maxDate < value.valueDate {
                        maxDate = value.valueDate
                    }
                }
            }
            if !user.userLocation.isEmpty {
                for loc in user.userLocation {
                    location = loc.locationName
                }
            }
            cell.initCell(location: location, lastUpdate: maxDate, counterNumber: "\(counterReader)")
        }
        return cell
    }
    
    
    //MARK: private methods
    private func calculateRowSize(_ toSize: CGSize){
        let screenSize = toSize
        var width = screenSize.width - 8
        if width > MAXCELLSIZE {
            width = MAXCELLSIZE
        }
        layoutHeight?.constant = (width * 0.8) + 20
        layoutHeight?.isActive = true

    }
}
