//
//  DishDetailViewController.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 25.10.2022.
//

import UIKit

class DishDetailViewController: UIViewController {

    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var amountLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func orderButtonClicked(_ sender: UIButton) {
    }
    
    var dish: Dish!
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
        amountLbl.text = dish.formattedAmount
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
    }
    

    
}
