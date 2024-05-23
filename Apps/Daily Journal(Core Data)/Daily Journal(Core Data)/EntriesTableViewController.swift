//
//  EntriesTableViewController.swift
//  Daily Journal(Core Data)
//
//  Created by Sanjay, Vaishnavi on 23/05/24.
//

import UIKit

class EntriesTableViewController: UITableViewController {
    // Create an Array 
    var entries : [Entry] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    }
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return entries.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let entry = entries[indexPath.row]
        cell.textLabel?.text = entry.text
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let entryVC = segue.destination as? EntryViewController {
            entryVC.enteriseVC = self
        }
    }
}
