//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by sys on 26.05.2023.
//

import UIKit

class DetailsVC: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
