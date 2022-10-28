//
//  DishLandscapeCollectionViewCell.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 25.10.2022.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {

    //MARK: -identifier from main storyboard
    static let identifier = "DishLandscapeCollectionViewCell"

    //MARK: -Outlets
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var amountLbl: UILabel!
    
    
    //MARK: -ViewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    //MARK: -Setup for outlets from Dish array
    func setup(dish: Dish){
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
        amountLbl.text = dish.formattedAmount
    }
    
    
    
}
 
