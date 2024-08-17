//
//  LoginViewController.swift
//  customProject
//
//  Created by LABORATORIO MAC UAM on 17/8/24.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func registerAction(_ sender: Any) {
        let registerViewController = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        let forgotPasswordViewController = ForgotPasswordViewController(nibName: "ForgotPasswordViewController", bundle: nil)
        
        self.navigationController?.pushViewController(forgotPasswordViewController, animated: true)
    }
    
    @IBAction func homeAction(_ sender: Any) {
        let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    
}
