//
//  GoViewController.swift
//  RainbowTabs
//
//  Created by AaronH on 2020-04-22.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class GoViewController: UIViewController {
    var color: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
//        navigationController?.navigationBar.prefersLargeTitles = false
//        navigationController?.popViewController(animated: true)
        navigationItem.title = color
    }
}
