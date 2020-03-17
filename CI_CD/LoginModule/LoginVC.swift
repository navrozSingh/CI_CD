//
//  ViewController.swift
//  CI_CD
//
//  Created by Navroz on 15/03/20.
//  Copyright © 2020 Navroz. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    let userModal = UserModal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func validateLogin() {
        userModal.validateCredentials(callback: {[weak self] completed,message in
            self?.showAlert(message: message, title: completed ? "Success" : "Failure" )
        })
    }
    
    func showAlert(message: String, title: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction((UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            alert.dismiss(animated: true, completion: nil)
        })))
        present(alert, animated: true, completion: nil)
    }
    
}

extension LoginVC: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text,
           let textRange = Range(range, in: text) {
           let updatedText = text.replacingCharacters(in: textRange,
                                                       with: string)
            if textField == txtUsername {
                userModal.user.email = updatedText
            } else {
                userModal.user.password = updatedText
            }
        }
        return true
    }
}

