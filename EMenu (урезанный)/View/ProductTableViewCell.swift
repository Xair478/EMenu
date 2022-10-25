//
//  ProductTableViewCell.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 23.10.2022.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageCell: UIImageView!
    
    @IBOutlet weak var labelCell: UILabel!
    
    
    
    
    var product: Product?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Product(id: "1", title: "Pasta", imageUrl: "Unknown", price: 3500, description: "There's something more")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        
    }
    
}
