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
        //return 3
        
        /// Version 2
        return Mountains.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /// Version 1
        //let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        //cell.detailTextLabel?.text = "Hello!"
        //return cell
        
        /// Version 2
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let currentMountain = Mountains[indexPath.row]
        cell.textLabel?.text = currentMountain.name
        cell.detailTextLabel?.text = String(currentMountain.height) + " m"
        //cell.imageView?.image = currentMountain.image
        cell.imageView?.image = cropImageToSquare(currentMountain.image)
        
        /// Version 3
        /// Improving the image in the cell
        cell.imageView?.layer.borderWidth = 5
        cell.imageView?.layer.borderColor = UIColor.white.cgColor
        cell.imageView?.clipsToBounds = true
        
        return cell
    }

}
