//
//  HomeViewController.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 24.10.2022.
//

import UIKit

class HomeViewController: UIViewController {

    //MARK: - OUtlets
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var recomendedCollectionView: UICollectionView!
    
    //MARK: -DishArrays
    var categories: [DishCategory] = [
        .init(id: "id1", name: "American", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "American 2", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "American 3", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "American 4", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "American 5", image: "https://picsum.photos/100/200")
    ]
    
    var populars: [Dish] = [
        .init(id: "id1", name: "Pizza", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", amount: 2500),
        .init(id: "id2", name: "Pasta", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", amount: 3000),
        .init(id: "id3", name: "Lasagne", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", amount: 4000)
    ]
    
    var recomended: [Dish] = [
        .init(id: "id2", name: "Pasta", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", amount: 3000),
        .init(id: "id3", name: "Lasagne", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", amount: 4000)
    ]
    
    
    //MARK: -View func
    override func viewDidLoad() {
        super.viewDidLoad()
        recomendedCollectionView.dataSource = self
        recomendedCollectionView.delegate = self
        registerCell()
    }
    
    
    
    //MARK: -Register Cells for CollectionView
    private func registerCell() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        recomendedCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
    }

    

}

//MARK: - extending home page with 3 CollectionViews and +extension with dishDetail page
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return populars.count
        case recomendedCollectionView:
            return recomended.count
        default: return 0
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
        case recomendedCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setup(dish: recomended[indexPath.row])
            return cell
        default: return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoryCollectionView {
            let controller = ListDishesViewController.instantiate()
            controller.category = categories[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }else{
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == popularCollectionView ? populars[indexPath.row] : recomended[indexPath.row]
            navigationController?.present(controller, animated: true)
        }
        
    }
    
    
}
