//
//  ViewController.swift
//  UIViewDemo
//
//  Created by AaronH on 2020-04-16.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let redView:UIView = {
        let v = UIView()
        v.frame = CGRect(x: 100, y: 100, width: 150, height: 150)
        v.backgroundColor = .red
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let profileIV: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(contentsOfFile:"van")
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(redView)
        print("frame (\(redView.frame.origin.x), \(redView.frame.origin.y))")
        print("bounds (\(redView.bounds.origin.x), \(redView.bounds.origin.y))")

        let width = view.bounds.size.width * 0.7
        redView.widthAnchor.constraint(equalToConstant: width).isActive = true
        redView.heightAnchor.constraint(equalToConstant: width).isActive = true
        
        profileIV.widthAnchor.constraint(equalToConstant: width).isActive = true
        profileIV.heightAnchor.constraint(equalToConstant: width).isActive = true
        
        let vStackView = UIStackView(arrangedSubviews: [redView, profileIV])
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        vStackView.axis = .vertical
        vStackView.distribution = .equalSpacing
        vStackView.alignment = .center
        vStackView.spacing = 20
        
        view.addSubview(vStackView)
        
        vStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 44).isActive = true
        vStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

