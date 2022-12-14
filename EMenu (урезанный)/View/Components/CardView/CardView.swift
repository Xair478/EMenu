//
//  CardView.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 25.10.2022.
//

import UIKit

class CardView: UIView {
    
    //MARK: -Initializing setup in the bottom
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetup()
    }
    
    
    //MARK: -Setup for every cell layer
    private func initialSetup() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 10
    }
}
