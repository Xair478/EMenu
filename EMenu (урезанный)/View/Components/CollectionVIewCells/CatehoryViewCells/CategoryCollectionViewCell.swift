//
//  CategoryCollectionViewCell.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 25.10.2022.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {

    //MARK: -Identifier from main storyboard
    static let identifier = String(describing: CategoryCollectionViewCell.self)
    
    //MARK: -Outlets
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    //MARK: -Setup for outlets from DishCategory array
    func setup(category: DishCategory) {
        categoryTitleLbl.text = category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
    }
    
    //MARK: -AwakeFromNib
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
