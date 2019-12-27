//
//  ViewController.swift
//  Summit
//
//  Created by Dalton Prescott Ng on 27/12/19.
//  Copyright © 2019 daltonDemo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Connect Tableview as an Outlet
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        seedMountains() // Populate the [Mountains] array
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //MARK: Table View Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /// Version 1
        //return 3
        
        /// Version 2
        return Mountains.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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

