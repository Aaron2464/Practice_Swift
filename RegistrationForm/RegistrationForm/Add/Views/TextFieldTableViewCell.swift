//
//  TextFieldTableViewCell.swift
//  RegistrationForm
//
//  Created by Derrick Park on 5/11/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {
  
  let textField: UITextField = {
    let tf = UITextField()
    tf.translatesAutoresizingMaskIntoConstraints = false
    return tf
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  }
  
  convenience init(placeholer: String) {
    self.init()
    textField.placeholder = placeholer
    contentView.addSubview(textField)
    textField.matchParent(padding: .init(top: 5, left: 16, bottom: 5, right: 16))
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
}
