//
//  RightDetailTableViewCell.swift
//  RegistrationForm
//
//  Created by Derrick Park on 5/11/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class RightDetailTableViewCell: UITableViewCell {
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  }
  
  convenience init(title: String) {
    self.init(style: .value1, reuseIdentifier: nil)
    textLabel?.text = title
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
}
