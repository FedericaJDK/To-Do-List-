//
//  AddToDoViewController.swift
//  To-Do List 3
//
//  Created by Federica D’Alvano on 6/27/22.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var importantLabel: UILabel!
    
    @IBOutlet weak var titletextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()

        if let titleText = titletextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
          }
          previousVC.toDos.append(toDo)
          previousVC.tableView.reloadData()
          navigationController?.popViewController(animated: true)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
