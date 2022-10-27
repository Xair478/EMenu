//
//  ListOrdersViewController.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 27.10.2022.
//

import UIKit

class ListOrdersViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Order] = [
        .init(id: "id1", name: "Abylkhair Amantayev", dish: .init(id: "id2", name: "Pasta", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", amount: 3000)),
        .init(id: "id2", name: "Abylkhair Amantayev", dish: .init(id: "id2", name: "Pasta", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", amount: 3000))
    ]
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
        registerCells()
    }

}


extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
