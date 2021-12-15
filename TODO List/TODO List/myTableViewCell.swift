//
//  myTableViewCell.swift
//  TODO List
//
//  Created by Arthur Khadraoui-Nicod on 03/12/2021.
//

import UIKit

class myTableViewCell: UITableViewCell {

    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var DescLabel: UILabel!
    
    @IBOutlet weak var StateSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
