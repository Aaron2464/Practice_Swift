//
//  ViewController.swift
//  CustomNavBar
//
//  Created by AaronH on 2020-05-13.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var customNavBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addBtnTapped(_ sender: UIButton) {
        sender.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        UIView.animate(withDuration: 1.0, animations: {
            let scaleTransform = CGAffineTransform(scaleX: 1.0, y: 3.0)
            self.customNavBar.transform = scaleTransform
        })
    }
    
}

