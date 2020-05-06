//
//  TodoListViewController.swift
//  SimpleTodoApp
//
//  Created by AaronH on 2020-05-01.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var list: [String]?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(list as Any)
    }
    
// Change header
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Header \(section)"
//    }
    
    @IBAction func unwindToListView(segue: UIStoryboardSegue){
        if segue.identifier == EditTodoViewController.unwindSegueId {

        }
    }
}
