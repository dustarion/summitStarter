//
//  TableViewController.swift
//  Summit
//
//  Created by Dalton Prescott Ng on 27/12/19.
//  Copyright © 2019 daltonDemo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        seedMountains() // Populate the [Mountains] array
    }
    
    //MARK: Table View Delegate
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /// Version 1
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /// Version 1
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.detailTextLabel?.text = "Hello!"
        return cell
    }

}
