//
//  EditTodoViewController.swift
//  SimpleTodoApp
//
//  Created by AaronH on 2020-05-04.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class EditTodoViewController: UIViewController {

    @IBOutlet var saveButton: UIBarButtonItem!
    @IBOutlet var descriptionTextField: UITextField!

    static let unwindSegueId = "saveUnwind"

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 1. validate user input
    private func validateTextFields() {
      let description = descriptionTextField.text ?? ""
      
      saveButton.isEnabled = !description.isEmpty
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is TodoListViewController{
//            let vc = segue.destination as! TodoListViewController
//            TodoListViewController.list[2].append(descriptionTextField.text ?? "")
        }
    }
}
