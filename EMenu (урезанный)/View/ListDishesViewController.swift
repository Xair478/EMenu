//
//  ListDishesViewController.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 27.10.2022
//

import UIKit

class ListDishesViewController: UIViewController {

    //MARK: -Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: -Arrays
    var category: DishCategory!
    var dishes: [Dish] = [
        .init(id: "id1", name: "Pizza", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", amount: 2500),
        .init(id: "id2", name: "Pasta", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", amount: 3000),
        .init(id: "id3", name: "Lasagne", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", amount: 4000)
    ]
    
    //MARK: -Validate Cell
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    
    
    
    
    
    
    
    //MARK: -ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        title = category.name
        registerCells()
    }
    
}


//MARK: -Extension
extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dishes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
