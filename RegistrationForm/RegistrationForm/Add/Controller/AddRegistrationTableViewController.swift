//
//  AddRegistrationTableViewController.swift
//  RegistrationForm
//
//  Created by Derrick Park on 5/11/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController {
  
  private let firstNameCell = TextFieldTableViewCell(placeholer: "First Name")
  private let lastNameCell = TextFieldTableViewCell(placeholer: "Last Name")
  private let emailCell = TextFieldTableViewCell(placeholer: "Email Name")
  private let checkInCell = RightDetailTableViewCell(title: "Check-In Date")
  private let checkOutCell = RightDetailTableViewCell(title: "Check-Out Date")
  private let checkInDatePickerCell = DatePickerTableViewCell()
  private let checkOutDatePickerCell = DatePickerTableViewCell()
  
  private var isCheckInDatePickerShown: Bool = false {
    didSet {
      checkInDatePickerCell.datePicker.isHidden = !isCheckInDatePickerShown
    }
  }
  
  private var isCheckOutDatePickerShown: Bool = false {
    didSet {
      checkOutDatePickerCell.datePicker.isHidden = !isCheckOutDatePickerShown
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.title = "Registrations"
    navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelTapped(_:)))
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneTapped(_:)))
  }
  
  @objc func cancelTapped(_ sender: UIBarButtonItem) {
    dismiss(animated: true, completion: nil)
  }
  
  @objc func doneTapped(_ sender: UIBarButtonItem) {
     
  }
  
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 5
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    switch section {
      case 0:
        return 3
      case 1:
        return 4
      case 2:
        return 2
      default:
        return 1
    }
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch (indexPath.section, indexPath.row) {
      case (0, 0):
        return firstNameCell
      case (0, 1):
        return lastNameCell
      case (0, 2):
        return emailCell
      case (1, 0):
        return checkInCell
      case (1, 1):
        return checkInDatePickerCell
      case (1, 2):
        return checkOutCell
      case (1, 3):
        return checkOutDatePickerCell
      default:
        return UITableViewCell()
    }
  }
  
  // MARK: - Table view delegate
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    switch (indexPath.section, indexPath.row) {
      case (1, 1):
        return isCheckInDatePickerShown ? 216 : 0
      case (1, 3):
        return isCheckOutDatePickerShown ? 216 : 0
      default:
        return 44.0
    }
  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    switch (indexPath.section, indexPath.row) {
      case (1, 0):
        if isCheckInDatePickerShown {
          isCheckInDatePickerShown = false
        } else if isCheckOutDatePickerShown {
          isCheckOutDatePickerShown = false
        } else {
          isCheckInDatePickerShown = true
        }
      case (1, 2):
        if isCheckOutDatePickerShown {
          isCheckOutDatePickerShown = false
        } else if isCheckInDatePickerShown {
          isCheckInDatePickerShown = false
        } else {
          isCheckOutDatePickerShown = true
        }
      default:
        break
    }
    /// Update the table view with a pair of beginUpdates and endUpdates calls.
    /// These calls tell the table view to re-query its attributes - including cell height
    tableView.beginUpdates()
    tableView.endUpdates()
  }
  
}
