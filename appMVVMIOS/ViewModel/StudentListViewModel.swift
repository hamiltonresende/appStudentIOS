//
//  StudentListViewModel.swift
//  appMVVMIOS
//
//  Created by Hamilton Ferreira on 08/12/19.
//  Copyright © 2019 Hamilton Ferreira. All rights reserved.
//

import Foundation

class StudentListViewModel {
    // Esta eh uma classe viewmodel de StudentListViewController
    
    var reloadStudentList = {() -> () in }
    
    //Cria lista de estudantes
    var arrayOfStudent: [Student] = []{
        didSet{
            reloadStudentList()
             
        }
    }
    
    func addStudent(name:String?, address:String?){
        arrayOfStudent.append(Student(name: name, address: address))
        
        //apos adicionar os dados relemos os dados
    }
}

