//
//  LoginViewController.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 12.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var logoLabel: UILabel!
    
    @IBOutlet weak var signInLabel: UILabel!
    
    @IBOutlet weak var loginTextField: CustomTextField!
    
    @IBOutlet weak var emailTextField: CustomTextField!
    
    @IBOutlet weak var passwordTextField: CustomTextField!
    
    @IBOutlet weak var signInButton: CustomButton!
    
    @IBOutlet weak var regLinkButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signInTapped(_ sender: Any) {
    }
    

}
