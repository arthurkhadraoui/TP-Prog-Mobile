//
//  DetailsViewController.swift
//  TODO List
//
//  Created by Arthur Khadraoui-Nicod on 15/12/2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var data: TODO?
    @IBOutlet weak var NameDetail: UILabel!
    @IBOutlet weak var DescDetail: UILabel!
    @IBOutlet weak var StatusDetail: UILabel!
    @IBOutlet weak var DateDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let data = data {
            NameDetail.text = data.name
            DescDetail.text = data.desc
            StatusDetail.text = data.status
            DateDetail.text = data.date.description
            if data.status == "A faire"{
                StatusDetail.textColor = UIColor.red
            }
            else{
                StatusDetail.textColor = UIColor.green
            }
        }
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
