//
//  LocationsTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Missy Allan on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit


class LocationsTableViewController: UITableViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.accessibilityLabel = "Locations Table"
        self.tableView.accessibilityIdentifier = "Locations Table"
       
        self.navigationItem.rightBarButtonItem?.accessibilityLabel = "addButton"
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "addButton"
    
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    
   
 let store = LocationsDataStore.sharedInstance      // This is the shared instance from the singleton

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return store.locations.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)

        cell.textLabel?.text = store.locations[indexPath.row].name
        
        cell.detailTextLabel?.text = String(store.locations[indexPath.row].trivia.count)

        return cell
    }
    
   
    // MARK: - Navigation
    
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showTrivia" {
        if let dest = segue.destination as? TriviaTableViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            let location = store.locations[indexPath.row]
            dest.locationTrivia = location
        }
    
    }else if segue.identifier == "showAddLocation" {
            _ = segue.destination as? AddLocationViewController
        }
    }


}









