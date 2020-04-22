//
//  BlueViewController.swift
//  TrafficSegues
//
//  Created by AaronH on 2020-04-20.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let identifier = segue.identifier {
            switch identifier{
                case "unwindToRed":
                    if let destinationVC = segue.destination as? GreenViewController{
                        
                }
                
            default:
                fatalError("worng segue identifier")
            }
        }
    }
    @IBAction func purpleButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToPurple", sender: sender)
    }
    @IBAction func yellowButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToYellow", sender: sender)
    }
}
