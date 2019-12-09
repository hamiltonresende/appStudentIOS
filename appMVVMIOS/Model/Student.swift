//
//  Student.swift
//  appMVVMIOS
//
//  Created by Hamilton Ferreira on 08/12/19.
//  Copyright © 2019 Hamilton Ferreira. All rights reserved.
//

import Foundation
class Student{
    var name: String?
    var address:String?
    
    init() {
        
    }
    
    init(name:String?, address:String?) {
        self.name = name
        self.address = address
    }
    
}
