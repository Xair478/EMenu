//
//  DishDetailViewController.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 25.10.2022.
//

import UIKit

class DishDetailViewController: UIViewController {

    //MARK: -Outlets
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var amountLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func orderButtonClicked(_ sender: UIButton) {
    }
    
    
    //MARK: -Registering Dishes
    var dish: Dish!
    
    
    //MARK: - Implementing var in Nib
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
        amountLbl.text = dish.formattedAmount
    }
    
    //MARK: -ViewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
    }
    

    
}
