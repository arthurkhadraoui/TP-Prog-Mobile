//
//  ViewController.swift
//  TODO List
//
//  Created by Arthur Khadraoui-Nicod on 03/12/2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var data = [TODO]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myTableViewCell
        cell.NameLabel.text = data[indexPath.row].name
        cell.DescLabel.text = data[indexPath.row].desc
        if data[indexPath.row].status=="A faire"{
            cell.StateSwitch.isOn=false
        }
        else{
            cell.StateSwitch.isOn=true
        }
        
        cell.StateSwitch.tag = indexPath.row
        

        return cell
    }
    
    @IBAction func changeState(_ sender: UISwitch) {
        
        if sender.isOn {
            data[sender.tag].status = "Fait"
        }
        else{
            data[sender.tag].status = "A faire"
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Find the row of the cell
            let row = indexPath.row
            data.remove(at: row)
            myTableView.reloadData()
        }
    }
    
    @IBAction func unwindToMainView(_ unwindSegue: UIStoryboardSegue) {
        
        if unwindSegue.identifier == "cancel" {
            let addViewController = unwindSegue.source as! AddViewController
            addViewController.dismiss(animated: true, completion: nil)
        }
        if unwindSegue.identifier == "save" {
            let addViewController = unwindSegue.source as! AddViewController
            if let newName = addViewController.NameTF.text, let newDesc = addViewController.DescTF.text {
                let new_data = TODO(name: newName,
                                      desc: newDesc,date: addViewController.DateTF.date)
                data.append(new_data)
                data.sort { (t1: TODO, t2: TODO) -> Bool in
                    return t1.date < t2.date
                }
                myTableView.reloadData()
            }
        }
        if unwindSegue.identifier == "back" {
            
        }
        // Use data from the view controller which initiated the unwind segue
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "details" {
            let detailsViewController = segue.destination as! DetailsViewController
            let myIndexPath = myTableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailsViewController.data = data[row]
        }
    }


    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        myTableView.dataSource = self
    }


}

