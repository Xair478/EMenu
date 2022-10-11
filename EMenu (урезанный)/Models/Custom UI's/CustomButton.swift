//
//  CustomButton.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 03.10.2022.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.backgroundColor = UIColor(red: 111, green: 160, blue: 250, alpha: 1).cgColor
        layer.cornerRadius = 20
    }

}
