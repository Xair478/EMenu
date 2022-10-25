//
//  DishPortraitCollectionViewCell.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 25.10.2022.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "DishPortraitCollectionViewCell"

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var amoutLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
    func setup(dish: Dish) {
        titleLbl.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        amoutLbl.text = dish.formattedAmount
        descriptionLbl.text = dish.description
    }
    
    
    
    
    
    
    
    
    
}
