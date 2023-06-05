//
//  ViewController.swift
//  DarkMoodApp
//
//  Created by sys on 5.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        let userTraitCollection = traitCollection.userInterfaceStyle
        if userTraitCollection == .dark {
            changeButton.tintColor = UIColor.white
        }else{
            changeButton.tintColor = UIColor.blue
            
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userTraitCollection = traitCollection.userInterfaceStyle
        if userTraitCollection == .dark {
            changeButton.tintColor = UIColor.white
        }else{
            changeButton.tintColor = UIColor.blue
            
        }
    }
    
}

