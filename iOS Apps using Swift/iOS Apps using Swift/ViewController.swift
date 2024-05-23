//
//  ViewController.swift
//  iOS Apps using Swift
//
//  Created by Sanjay, Vaishnavi on 15/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var counting: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonTabbb(_ sender: Any) {
        view.backgroundColor = .yellow
        middleLabel.text = "I like Chesse"
    }
    
    @IBAction func count(_ sender: Any) {
        count = count + 1
        
        counting.text = String(count)
        // at count 10 change the count to purple
        if count >= 10 {
            view.backgroundColor = .purple
        }
    }
    
    
    @IBAction func nextPage(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "nextVC") as! NextViewController
        present(vc,animated: true)
    }
    
    
}

