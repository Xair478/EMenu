//
//  MainMenuViewController.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 19.10.2022.
//

import UIKit

class MainMenuViewController: UITabBarController, UITableViewDataSource, UITableViewDelegate {
    
    //let layout = GridItem()
    @IBOutlet weak var HStackView: UIStackView!
    @IBOutlet weak var CatalogTableView: UITableView!
    var product: Product?
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CatalogTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CatalogTableView.dequeueReusableCell(withIdentifier: "productCell") as! ProductTableViewCell
        let product = products[indexPath.row]
        cell.labelCell.text = product.title
        cell.imageCell.image = UIImage(named: "product")
        return cell
    }

    
    
    var products = [
        Product(id: "1", title: "Pasta", imageUrl: "Gnocchi.jpg", price: 3500, description: "There's something more"),
        Product(id: "2", title: "Lasagne", imageUrl: "Lasagne.jpg", price: 3500, description: "There's something more"),
        Product(id: "3", title: "Margherita", imageUrl: "Margherita.jpg", price: 3500, description: "There's something more"),
        Product(id: "4", title: "Risotto-Alla-Milanese", imageUrl: "Risotto-Alla-Milanese.jpg", price: 3500, description: "There's something more"),
        Product(id: "5", title: "Spaghetti-alla-carbonara", imageUrl: "Spaghetti-alla-carbonara.jpg", price: 3500, description: "There's something more")
    ]
}
