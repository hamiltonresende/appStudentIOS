//
//  CellStudentList.swift
//  appMVVMIOS
//
//  Created by Hamilton Ferreira on 08/12/19.
//  Copyright © 2019 Hamilton Ferreira. All rights reserved.
//

import UIKit

class CellStudentList: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAdress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var studentObj : Student?{
        didSet{
            cellDataSet()
        }
    }
    
    func cellDataSet() {
        labelName.text = studentObj?.name
        labelAdress.text = studentObj?.address
    }

}
