//
//  TableViewController.swift
//  Summit
//
//  Created by Dalton Prescott Ng on 27/12/19.
//  Copyright © 2019 daltonDemo. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    // Darken Stackview
}

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
    
    // Add this delegate to change cell height!
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /// Version 1
        //let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        //cell.detailTextLabel?.text = "Hello!"
        //return cell
        
        /// Version 2
        //let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        //let currentMountain = Mountains[indexPath.row]
        //cell.textLabel?.text = currentMountain.name
        //cell.detailTextLabel?.text = String(currentMountain.height) + " m"
        //cell.imageView?.image = currentMountain.image
        //cell.imageView?.image = cropImageToSquare(currentMountain.image)
        
        /// Version 3
        /// Improving the image in the cell
        //cell.imageView?.layer.borderWidth = 5
        //cell.imageView?.layer.borderColor = UIColor.white.cgColor
        //cell.imageView?.clipsToBounds = true
        
        /// Version 4
        let cell = tableView.dequeueReusableCell(withIdentifier: "nicerCell", for: indexPath) as! CustomTableViewCell
        let currentMountain = Mountains[indexPath.row]
        
        cell.backgroundImageView.image = currentMountain.image
        cell.titleLabel.text = currentMountain.name
        cell.subtitleLabel.text = String(currentMountain.height) + " m"
        
        return cell
    }

}
