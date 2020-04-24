//
//  ViewController.swift
//  NotificationDemo
//
//  Created by Derrick Park on 4/24/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var amountTextField: UITextField!
  
  // MARK: - view controller life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    amountTextField.delegate = self
    // Add observers to NotificationCenter
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    
    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
    view.addGestureRecognizer(tapGestureRecognizer)
  }
  
  @objc func dismissKeyboard(_ recogizer: UITapGestureRecognizer) {
    amountTextField.resignFirstResponder()
  }
 
  @objc func keyboardWillShow(notification: Notification) {
    // change the view frame (y) (moves up)
    // 1. get the keyboard size (height)
    // 2. change view.frame.origin.y
    if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
      if view.frame.origin.y == 0 {
        view.frame.origin.y -= keyboardSize.height / 2
      }
    }
  }
  
  @objc func keyboardWillHide(notification: Notification) {
    if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
      if view.frame.origin.y != 0 {
        view.frame.origin.y = 0
      }
    }
  }

}

// MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
}
