//
//  myViewController.swift
//  TODO List
//
//  Created by Arthur Khadraoui-Nicod on 03/12/2021.
//

import UIKit

class myViewController: UIViewController {
    
    var myData: TODO?
    
    
    @IBOutlet weak var myName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let data = myData {
            myName.text = data.name
        }    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
