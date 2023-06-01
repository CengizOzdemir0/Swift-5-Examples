//
//  ViewController.swift
//  LandmarkBook
//
//  Created by sys on 26.05.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    //UITableViewDelegate table fonsksiyonlarını çağırmak için
    var landmarkImages = [UIImage]()
    var landmarkNames = [String]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        // self viewController demek
        tableView.dataSource = self
        
        
   
        landmarkNames.append("Colosseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonhenge")
        landmarkNames.append("Taj Mahal")
    
       
        landmarkImages.append(UIImage(named: "colesium.jpg")!)
        landmarkImages.append(UIImage(named: "cinSeddi.jpg")!)
        landmarkImages.append(UIImage(named: "kremlinSarayi.jpg")!)
        landmarkImages.append(UIImage(named: "stonehenge.jpg")!)
        landmarkImages.append(UIImage(named: "tacmahal.jpg")!)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
        // 10 tane girdi göster demek satır anlamında
    }
    
    // table view içinde ne gösterilecek
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
       // content.image = landmarkImages[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDateaisVC", sender: nil)    }
    
}

