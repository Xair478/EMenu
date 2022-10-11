//
//  SIgnUpViewController.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 12.10.2022.
//

import UIKit

class SIgnUpViewController: UIViewController {
    
    //MARK: -Outlets
    @IBOutlet weak var logoLabel: UILabel!
    
    @IBOutlet weak var signUpLabel: UILabel!
    
    @IBOutlet weak var loginTextField: CustomTextField!
    
    @IBOutlet weak var emailTextField: CustomTextField!
    
    @IBOutlet weak var passwordTextField: CustomTextField!
    
    @IBOutlet weak var confirmTextField: CustomTextField!
    
    @IBOutlet weak var signUpButton: CustomButton!
    
    @IBOutlet weak var signInRefButton: UIButton!
    
    
    
    //MARK: -Method DidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //MARK: -Actions
    @IBAction func signUpTapped(_ sender: Any) {
    }
    
    

}
