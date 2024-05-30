//
//  ViewController.swift
//  AppGetMethod
//
//  Created by Sanjay, Vaishnavi on 28/05/24.
//

import UIKit
struct Jsonget : Decodable{
    let name: String
    let author: String
    let id: String
    
}

class ViewController: UIViewController {
    var arrdata = [Jsonget]()
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func getData() {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=15b2b060dc344cd291a5e3e1a51c2cf8")
        URLSession.shared.dataTask(with: url!) { [self] (data, response, error) in
            do {
                if error == nil {
                    self.arrdata = try JSONDecoder().decode([Jsonget].self, from: data!)
                    
                    for mainarr in self.arrdata {
                        print(mainarr.name,":",mainarr.author, ":" ,mainarr.id)
                    }
                }
            }
            catch{
                print("Error in gate json daata")
            }
           
        }.resume()
    }


}

