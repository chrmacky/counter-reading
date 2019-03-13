//
//  StartScreenViewController.swift
//  counter-reading
//
//  Created by Christoph Lemke on 05.03.19.
//  Copyright © 2019 Christoph Lemke. All rights reserved.
//

import UIKit

// First View of the App
class StartScreenViewController: UIViewController {

    @IBOutlet weak var startImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        startImage.layer.cornerRadius = 12
        startImage.layer.masksToBounds = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
