//
//  TODO.swift
//  TODO List
//
//  Created by Arthur Khadraoui-Nicod on 03/12/2021.
//

class TODO {
    var name: String
    var desc: String
    var status: String
    var date: Date
    
    
    
    init(name:String,desc:String,date: Date) {
        self.name = name
        self.desc = desc
        self.status = "A faire"
        self.date = date
    }
}

import Foundation
