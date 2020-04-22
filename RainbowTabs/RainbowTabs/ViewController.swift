//
//  ViewController.swift
//  RainbowTabs
//
//  Created by AaronH on 2020-04-22.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    let centerBtn:UIButton = {
//        let btn = UIButton()
//        btn.setTitle("GO!", for: .normal)
//        btn.setTitleColor(.white, for: .normal)
//        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
//        btn.translatesAutoresizingMaskIntoConstraints = false
//        btn.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        btn.heightAnchor.constraint(equalToConstant: 60).isActive = true
//        return btn
//    }()
    
    let centerBtn = CenterBtn()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Red"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        view.backgroundColor = .red
        view.addSubview(centerBtn)
        
        centerBtn.addTarget(self, action: #selector(goToNextViewController), for: .touchUpInside)
        
        centerBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc func goToNextViewController(_ sender: UIButton){
        //go to GoViewController
        let goVC = GoViewController()
        goVC.color = "RED"
        navigationController?.pushViewController(goVC, animated: true)
    }
}

