//
//  DatePickerTableViewCell.swift
//  RegistrationForm
//
//  Created by Derrick Park on 5/11/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DatePickerTableViewCell: UITableViewCell {
  
  let datePicker: UIDatePicker = {
    let dp = UIDatePicker()
    dp.translatesAutoresizingMaskIntoConstraints = false
    return dp
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    contentView.addSubview(datePicker)
    datePicker.matchParent()
    datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .valueChanged)
  }
  
  @objc func datePickerValueChanged(_ sender: UIDatePicker) {
    print("Hello")
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
}
