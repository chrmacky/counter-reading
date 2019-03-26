//
//  CRMainScreenViewController.swift
//  counter-reading
//
//  Created by Christoph Lemke on 15.02.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

class CRMainScreenViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    private var headerList = [CRCategoryLocationEnum.eigeneOrte, CRCategoryLocationEnum.geteilterOrt]
    private var contentRow = [CRMainStart_Row]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // create the row
        for headerTitle in headerList{
            createRow(headerLabel: headerTitle.rawValue)
        }
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        view.backgroundColor = .green
        view.heightAnchor.constraint(equalToConstant: 80).isActive = true
        self.stackView.addArrangedSubview(view)
        
//        let infoView = UINib(nibName: "CRMain_InfoView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! CRMain_InfoView
//        stackView.addArrangedSubview(infoView)
    }
    
    private func createRow(headerLabel: String){
        let header = UINib(nibName: "CRMain_SectionHeader", bundle: nil).instantiate(withOwner: nil, options: nil).first as! CRMain_SectionHeader
        header.title = headerLabel
        header.controller = self
        header.heightAnchor.constraint(equalToConstant: 40).isActive = true
        stackView.addArrangedSubview(header)
        
        let content = UINib(nibName: "CRMainStart_Row", bundle: nil).instantiate(withOwner: nil, options: nil).first as! CRMainStart_Row
        stackView.addArrangedSubview(content)
    }

}

