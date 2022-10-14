//
//  SIgnUpViewController.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 12.10.2022.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

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
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    //MARK: -Method DidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        errorLabel.alpha = 0
    }
    
    
    
    //MARK: -check in
    //Password regex function
    func isValidPassword(password: String) -> Bool {
        let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,32}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: password)
    }  //Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet and 1 Number
    
    
    
    //check the fields that data is correct. If everything is correct == nil, otherwise returns error message
    func validateTheFields() -> String? {
        
        //check that all fields are filled
        if loginTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            confirmTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""{
            return "Please fill all fields"
        }
        
        //check password
        let cleanPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if isValidPassword(password: cleanPassword) == false {
            return "Password is incorrect"
        }
        
        return nil
    }
    
    

    //MARK: -Actions
    @IBAction func signUpTapped(_ sender: Any) {
        
        //Validate the fields
        let error = validateTheFields()
        
        if error != nil {
            //Smth wrong with text fields
            showError(error!)
        }else{
            //Data collection version
            let nickName = loginTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            //Create the user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                
                
                if err != nil {
                    self.showError("Cannot create user")
                }else{
                    let db = Firestore.firestore()
                    db.collection("users").addDocument(data: ["login": nickName, "uid": result!.user.uid]) { (error) in
                        if error != nil{
                            self.showError("User havent been created")
                        }
                    }
                
                }
            }
            
            //Transition to home page
            self.transitionToHome()
        }
    }
    
    
    
    
    func showError(_ message: String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }

    func transitionToHome() {
        let HomeVC = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeTabBarViewController) as? HomeTabViewController
        
        self.view.window?.rootViewController = HomeVC
        self.view.window?.makeKeyAndVisible()
    }
}
