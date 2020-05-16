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
    @IBOutlet var customNavBarHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addBtnTapped(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1.5, animations: {
            let rotationTransform = CGAffineTransform(rotationAngle: .pi * 0.75 ) // max - .pi
            sender.transform = rotationTransform
            self.customNavBarHeight.constant = 200
            self.view.layoutIfNeeded()
        })
    }
    
}

