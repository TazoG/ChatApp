//
//  LoginViewController.swift
//  ChatApp
//
//  Created by Tazo Gigitashvili on 14.11.22.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                
                if let err = error {
                    print(err.localizedDescription)
                } else {
                    // go to chat ;)
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
              
            }
        }
    }
    
}
