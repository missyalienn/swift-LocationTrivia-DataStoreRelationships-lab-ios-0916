//
//  TriviaTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Missy Allan on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TriviaTableViewController: UITableViewController {

    
    var locationTrivia = Location()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.accessibilityIdentifier = "Trivia Table"
        tableView.accessibilityLabel = "Trivia Table"
        
    }

    override func viewWillAppear(_ animated: Bool) {
       
        self.tableView.reloadData()
        
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        return locationTrivia.trivia.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "triviaCell", for: indexPath)

        cell.textLabel?.text = locationTrivia.trivia[indexPath.row].content
        cell.detailTextLabel?.text = String(locationTrivia.trivia[indexPath.row].likes)
    

        return cell
    }
   
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    // moving from Trivia Table View Controller to AddTrivia by clikcing "+"
    // AddTrivia's selected location will be TriviaVC location as set by LocationViewController
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addTrivia" {
            let dest = segue.destination as! AddTriviaViewController
                dest.locationATVC = locationTrivia
            
                }
                
            }
            
        }

            


  

   






