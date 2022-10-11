//
//  CustomTextField.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 03.10.2022.
//

import UIKit

class CustomTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.backgroundColor = UIColor(red: 249/255, green: 250/255, blue: 250/255, alpha: 1).cgColor
        layer.cornerRadius = 20
        
    }

}










