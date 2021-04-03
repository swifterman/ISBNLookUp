//
//  ViewController.swift
//  Streaming
//
//  Created by Vafa on 3/26/21.
//

import UIKit
import Firebase
import GoogleSignIn

class ViewController: UIViewController {

    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginBtn.setRadius(to: 6)
        setSignUpButtonDesign()
    }

    @IBAction func signUpPressed(_ sender: UIButton) {
    }
    @IBOutlet weak var signUpBtn: UIButton!
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailInput.text, let password = passwordInput.text{
            Auth.auth().signIn(withEmail: email, password: password,  completion: { (result, error) in
                if let e = error {
                    print(e.localizedDescription)
                }else {
                    self.performSegue(withIdentifier: SeguePages.loginToMain.name , sender: self)
                }
                
            })

        }
        
    }
    
    @IBAction func googleSignInPressed(_ sender: Any) {
    }
    @IBAction func appleSignInPressed(_ sender: Any) {
    }
    
    func setSignUpButtonDesign () {
        let signUpValue = "Don't have an account? Sign Up!"
        print(ColorsData.mainYellow.color)
        let att = NSMutableAttributedString(string: signUpValue);
        att.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(hexString: ColorsData.mainYellow.color), range: NSRange(location: 0, length: 22))
        signUpBtn.setAttributedTitle(att, for: .normal)
    }
}

