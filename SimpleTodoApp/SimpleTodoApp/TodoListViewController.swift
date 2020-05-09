//
//  TodoListViewController.swift
//  SimpleTodoApp
//
//  Created by AaronH on 2020-05-01.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    
    var list: [[String]] = [["Build up App", "Fihish assignment"], ["Eat dinner"], ["Sleep all night"]]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

        tableView.delegate = self
        // 分隔線的樣式
        tableView.separatorStyle = .singleLine

        // 分隔線的間距 四個數值分別代表 上、左、下、右 的間距
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)

        // 是否可以點選 cell
        tableView.allowsSelection = true

        // 是否可以多選 cell
        tableView.allowsMultipleSelection = false
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        if indexPath.section == 0{
            if indexPath.row == 0 {
                cell.accessoryType = .checkmark
            } else if indexPath.row == 1 {
                cell.accessoryType = .detailButton
            } else if indexPath.row == 2 {
                cell.accessoryType = .detailDisclosureButton
            } else if indexPath.row == 3 {
                cell.accessoryType = .disclosureIndicator
            }
        }
        
        if let myLabel = cell.textLabel {
            myLabel.text = "\(list[indexPath.section][indexPath.row])"
        }
        
        return cell
    }
    
// Change header
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "High Priority"
        case 1: return "Medium Priority"
        case 2: return "Low Priority"
        default: return nil
        }
    }
    
    @IBAction func unwindToListView(segue: UIStoryboardSegue){
        if segue.identifier == EditTodoViewController.unwindSegueId {
//            print(TodoListViewController.list as Any)
            tableView.reloadData()
        }
    }
}
