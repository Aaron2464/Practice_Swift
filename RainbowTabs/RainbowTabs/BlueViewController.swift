//
//  BlueViewController.swift
//  RainbowTabs
//
//  Created by AaronH on 2020-04-22.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    let centerBtn = CenterBtn()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Blue"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .blue
        view.addSubview(centerBtn)
        centerBtn.addTarget(self, action: #selector(goToNextViewController), for: .touchUpInside)
        centerBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }

    @objc func goToNextViewController(_ sender: UIButton){
           //go to GoViewController
           let goVC = GoViewController()
           goVC.color = "Blue"
           navigationController?.pushViewController(goVC, animated: true)
       }
}
