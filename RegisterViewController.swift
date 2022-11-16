//
//  RegisterViewController.swift
//  ChatApp
//
//  Created by Tazo Gigitashvili on 14.11.22.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
   
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let err = error {
                    print(err.localizedDescription)
                } else {
                    // go to chat ;)
                    self.performSegue(withIdentifier: "RegisterViewController", sender: self)
                }
            }
        }

    }
    
    
    
}
