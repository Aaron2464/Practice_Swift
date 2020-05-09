//
//  EditTodoViewController.swift
//  SimpleTodoApp
//
//  Created by AaronH on 2020-05-04.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class EditTodoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var saveButton: UIBarButtonItem!
    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var priorityTextField: UITextField!
    
    var priority: [String] = ["High Priority", "Medium Priority", "Low Priority"]
    var selectNum :Int = 0
    
    static let unwindSegueId = "saveUnwind"
    let mPickerView = UIPickerView()
      
    override func viewDidLoad() {
        super.viewDidLoad()
        mPickerView.delegate = self
        mPickerView.dataSource = self
        
        priorityTextField.text = priority[selectNum]
        priorityTextField.inputView = mPickerView
    }
    
    // 1. validate user input
    private func validateTextFields() {
      let description = descriptionTextField.text ?? ""
      
      saveButton.isEnabled = !description.isEmpty
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is TodoListViewController{
            let vc = segue.destination as! TodoListViewController
            vc.list[selectNum].append(descriptionTextField.text ?? "")
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
       
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return priority.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return priority[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectNum = row
        priorityTextField.text = priority[row]
    }
}
