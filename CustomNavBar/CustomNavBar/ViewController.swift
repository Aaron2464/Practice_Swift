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
    
    private var isAddBtnTapped: Bool = false
    
    private let snackImageViews = [
        UIImageView(image: UIImage(named: "oreos")),
        UIImageView(image: UIImage(named: "pizza_pockets")),
        UIImageView(image: UIImage(named: "pop_tarts")),
        UIImageView(image: UIImage(named: "popsicle")),
        UIImageView(image: UIImage(named: "ramen"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addBtnTapped(_ sender: UIButton) {
        if !isAddBtnTapped {
            isAddBtnTapped = true
            UIView.animate(withDuration: 1.5, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.3, options: .curveEaseInOut, animations: {
                let rotationTransform = CGAffineTransform(rotationAngle: .pi / 4 ) // max - .pi
                sender.transform = rotationTransform
                self.customNavBarHeight.constant = 200
                self.view.layoutIfNeeded()
            }, completion: nil)
        } else {
            isAddBtnTapped = false
            UIView.animate(withDuration: 1.5, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.3, options: .curveEaseInOut, animations: {
                let rotationTransform = CGAffineTransform(rotationAngle: .pi / 2 ) // max - .pi
                sender.transform = rotationTransform
                self.customNavBarHeight.constant = 80
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
    }
    
}

