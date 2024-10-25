//
//  SignInViewController.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 25/10/24.
//

import Foundation
import UIKit

class SignInViewController: UIViewController {

    
    
    @IBOutlet var RememberMe: CheckboxButton!
    
    @IBAction func signInButton(_ sender: Any) {
        performSegue(withIdentifier: "showSignIn", sender: nil)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func checkboxTapped(_ sender: CheckboxButton) {
           print("Checkbox is checked: \(sender.isChecked)")
       }




}
