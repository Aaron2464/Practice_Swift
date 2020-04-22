//
//  ViewController.swift
//  TrafficSegues
//
//  Created by AaronH on 2020-04-20.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit
struct User {
    let name: String
    let hobby: String
}
class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var hobbyTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // this method gets called right before the seque happens
//        if let identifier = segue.identifier, identifier == "Green" {
//            if let destinationVC = segue.destination as? GreenViewController{
//                descriptionVC.navigationItem.title = nameTextField.text
//                let name = nameTextField.text!
//                let hobby = hobbyTextField.text!
//                let user = User(name: name, hobby: hobby)
//                destinationVC.user = user
//            }
//            segue.destination.navigationItem.title = nameTextField.text
//        }
    }

    @IBAction func unwindToRed(unwindSeque: UIStoryboardSegue){
        
    }
}

