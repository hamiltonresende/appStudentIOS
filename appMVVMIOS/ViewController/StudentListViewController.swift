//
//  StudentListViewController.swift
//  appMVVMIOS
//
//  Created by Hamilton Ferreira on 08/12/19.
//  Copyright © 2019 Hamilton Ferreira. All rights reserved.
//

import UIKit

class StudentListViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    
    @IBOutlet weak var textFieldAddress: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    let studentViewModel = StudentListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Cria o metodo de adicionar na classe viewModel
        tableViewSetup()
        
        //cria o objeto viewModel
        studentViewModel.reloadStudentList = {
            [weak self] () in self?.tableView.reloadData()
        }
        
        //roda projeto
        
        
    }

    @IBAction func buttonHandlerAddData(_ sender: Any) {
        //Metodo para da acao de adicionar a data
        
        if (textFieldName.text?.count ?? 0 > 0) && (textFieldAddress.text?.count ?? 0 > 0){
            studentViewModel.addStudent(name: textFieldName.text, address: textFieldAddress.text)
            
            //limpa ao incluir
            textFieldName.text = ""
            textFieldAddress.text = ""
            self.view.endEditing(true)
        }
        else{
            // valida
            
        }
        
        //
        
    }
}
extension StudentListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableViewSetup() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentViewModel.arrayOfStudent.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CellStudentList = tableView.dequeueReusableCell(withIdentifier: String(describing: CellStudentList.self)) as! CellStudentList
        
        //seta dados do estudante na celula
        cell.studentObj = studentViewModel.arrayOfStudent[indexPath.row]
        
        //Pega os dados do textfield e coloca no model
        
        
        return cell
    }
}

