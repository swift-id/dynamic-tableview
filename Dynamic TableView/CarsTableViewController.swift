//
//  CarsTableViewController.swift
//  Dynamic TableView
//
//  Created by R. Kukuh on 31/01/19.
//  Copyright © 2019 R. Kukuh. All rights reserved.
//

import UIKit

class CarsTableViewController: UITableViewController {
    
    let cars = ["Honda Jazz", "Honda Brio", "Toyota Agya", "Toyota Yaris"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - TableView data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula",
                                                 for: indexPath)

        cell.textLabel?.text = cars[indexPath.row]

        return cell
    }

    // MARK: - TableView functions
    
    override func tableView(_ tableView: UITableView,
                   didDeselectRowAt indexPath: IndexPath) {
        
        print("User select: section#\(indexPath.section)-row#\(indexPath.row)")
    }
}
