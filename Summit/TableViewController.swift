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
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        // Code...
    }

}
