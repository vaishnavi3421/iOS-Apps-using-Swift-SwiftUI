//
//  EntryViewController.swift
//  Daily Journal(Core Data)
//
//  Created by Sanjay, Vaishnavi on 23/05/24.
//

import UIKit

class EntryViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var EntryTextView: UITextView!
    
    var enteriseVC : EntriesTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillDisappear(_ animated: Bool) {
        //Make an entry
        var entry = Entry()
        entry.date = datePicker.date
        entry.text = EntryTextView.text
        // Add an entry to tableView Array
        enteriseVC?.entries.append(entry)
        enteriseVC?.tableView.reloadData()
    }

    

}
