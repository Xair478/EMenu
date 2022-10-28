//
//  DishListTableViewCell.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 27.10.2022.
//

import UIKit

class DishListTableViewCell: UITableViewCell {

    //MARK: -Outlets
    static let identifier = "DishListTableViewCell"
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    //MARK: -SetupDishes
    func setup(dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
    }
    
    func setup(order: Order) {
        dishImageView.kf.setImage(with: order.dish?.image?.asUrl)
        titleLbl.text = order.dish?.name
        descriptionLbl.text = order.name
        
    }
    
    
}
