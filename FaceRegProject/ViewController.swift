//
//  ViewController.swift
//  FaceRegProject
//
//  Created by CengizOZDEMIR on 5.06.2023.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signInCliclked(_ sender: Any) {
        let authContext = LAContext()
        
        var error: NSError?
        
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Is it you?") {
                (success, error) in
                if success == true {
                    // successful auth
                    self.performSegue(withIdentifier: "toSecondVC", sender: nil)
                } else {
                    self.label.text = "Error!"
                }
                    
            }
        }
        
    }
}

