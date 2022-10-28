//
//  String+Extension.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 25.10.2022.
//

import Foundation

//MARK: -Kingfisher image setting for all UIImage outlets in array
extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
