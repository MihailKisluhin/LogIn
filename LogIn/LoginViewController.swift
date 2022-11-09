//
//  ViewController.swift
//  LogIn
//
//  Created by Kisluhin Mihail on 08.11.22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginView: UIView!
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ShowUserAlert() {
        showAlert(with: "Oops!", andMessage: "Your name is Anton")
    }
    
    @IBAction func showPassAlert() {
        showAlert(with: "Oops!", andMessage: "Are you dolboeb?")
    }
    
    
}

    extension LoginViewController {
        private func showAlert(with title: String, andMessage message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            present(alert, animated: true)
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.userNameTF.text = ""
                self.passwordTF.text = ""
            }
            alert.addAction(okAction)
        }
    }

