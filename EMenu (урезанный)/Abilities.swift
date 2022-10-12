//
//  Abilities.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 12.10.2022.
//

import UIKit

class Abilities {
    
    
    //Password regex function
    func isValidPassword() -> Bool {
        let passwordRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }  //Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet and 1 Number
}
