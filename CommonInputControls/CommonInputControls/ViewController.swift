//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Derrick Park on 4/17/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var toggle: UISwitch!
  @IBOutlet var slider: UISlider!
  @IBOutlet var nameField: UITextField!

  let moneyButton: UIButton = {
    let btn = UIButton()
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.backgroundColor = .blue
    btn.setTitle("🤑", for: .normal)
    btn.widthAnchor.constraint(equalToConstant: 100).isActive = true
    btn.heightAnchor.constraint(equalToConstant: 100).isActive = true
    return btn
  }() // immediately invoked function
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    view.addSubview(moneyButton)
    moneyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
    moneyButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -64).isActive = true
    moneyButton.addTarget(self, action: #selector(moneyButtonTapped), for: .touchUpInside)
    
    let tapGesture = UIPanGestureRecognizer(target: self, action: #selector(tapRecognized))
    view.addGestureRecognizer(tapGesture)
  }
  
  @objc func tapRecognized(_ recognizer: UIPanGestureRecognizer) {
    switch recognizer.state {
      case .changed:
        print(recognizer.translation(in: view))
      default:
        break
    }
  }
  
  @objc func moneyButtonTapped(_ sender: UIButton) {
    print("Get money 💰")
  }
  
  @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
    nameField.resignFirstResponder()
  }
  
  @IBAction func buttonTapped(_ sender: UIButton) {
    print("Button was tapped!")
    if toggle.isOn {
      print("toggle on!")
    } else {
      print("toggle off!")
    }
    
    print("The slider is set to \(slider.value)")
    print("The name is \(nameField.text!)")
  }
  
  @IBAction func switchToggled(_ sender: UISwitch) {
    if sender.isOn {
      print("The switch is on!")
    } else {
      print("The switch is off!")
    }
  }
  
  @IBAction func sliderValueChanged(_ sender: UISlider) {
    print(sender.value)
  }
  
  @IBAction func ketboardReturnKeyTapped(_ sender: UITextField) {
    if let text = sender.text {
      print(text)
    }
  }
  
  @IBAction func textChanged(_ sender: UITextField) {
    if let text = sender.text {
      print(text)
    }
  }
}

