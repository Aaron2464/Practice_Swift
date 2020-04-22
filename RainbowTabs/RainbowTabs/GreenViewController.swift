//
//  GreenViewController.swift
//  RainbowTabs
//
//  Created by AaronH on 2020-04-22.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    
    let centerBtn = CenterBtn()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Green"
        navigationItem.largeTitleDisplayMode = .always
        view.backgroundColor = .green
        view.addSubview(centerBtn)
        centerBtn.addTarget(self, action: #selector(goToNextViewController), for: .touchUpInside)
        centerBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    @objc func goToNextViewController(_ sender: UIButton){
        //go to GoViewController
        let goVC = GoViewController()
        goVC.color = "Green"
        navigationController?.pushViewController(goVC, animated: true)
    }
    
}
