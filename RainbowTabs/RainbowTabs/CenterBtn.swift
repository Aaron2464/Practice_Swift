//
//  CenterBtn.swift
//  RainbowTabs
//
//  Created by AaronH on 2020-04-22.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class CenterBtn: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    convenience init(){
        self.init(frame: .zero)
        self.setTitle("GO!", for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
