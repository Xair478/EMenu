//
//  DishPortraitCollectionViewCell.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 25.10.2022.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    //MARK: -Identifier
    static let identifier = "DishPortraitCollectionViewCell"

    //MARK: -Outlets
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var amoutLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    //MARK: -AwakeFromNib for Delegate and DataSource
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    //MARK: - Setup for outlets from Dishes array
    func setup(dish: Dish) {
        titleLbl.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        amoutLbl.text = dish.formattedAmount
        descriptionLbl.text = dish.description
    }
    
}
