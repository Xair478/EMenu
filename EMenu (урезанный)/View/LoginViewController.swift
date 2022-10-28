//
//  LoginViewController.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 12.10.2022.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    //MARK: - Outlets
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

        errorLabel.alpha = 0
    }
    

    //MARK: - Actions
    @IBAction func signInTapped(_ sender: Any) {
        
        //Validate text fields
        
        //Clean versions of fields
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        //Signing in the users
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
            }else{
                self.transitionToHome()
            }
        }
    }
    
    
    //MARK: -transition to page
    func transitionToHome() {
        let HomeVC = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeTabBarViewController) as? HomeViewController
        
        self.view.window?.rootViewController = HomeVC
        self.view.window?.makeKeyAndVisible()
        
    }
    
    
    

}
