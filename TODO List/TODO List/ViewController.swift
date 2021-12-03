//
//  ViewController.swift
//  TODO List
//
//  Created by Arthur Khadraoui-Nicod on 03/12/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    var myData = [TODO]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myTableViewCell
        cell.Title = myData[indexPath.row].title
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

