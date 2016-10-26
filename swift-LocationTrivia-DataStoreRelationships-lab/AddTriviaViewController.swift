//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Missy Allan on 10/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddTriviaViewController: UIViewController {

    var locationATVC = Location()
    
    
    @IBOutlet weak var triviumTextField: UITextField!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var saveButton: UIButton!
    
    
    
    @IBAction func triviaCancelTapped(_ sender: AnyObject) {
    
        self.dismiss(animated: true, completion: nil)
        
        
        
    }
    
    
    
    @IBAction func triviaSaveTapped(_ sender: AnyObject) {
       
       let triviaInput = triviumTextField.text!

        let newTrivium = Trivium(content: triviaInput, likes: 0)

        locationATVC.trivia.append(newTrivium)
        
        self.dismiss(animated: true, completion: nil)

        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        triviumTextField.accessibilityIdentifier = "Trivium Text Field"
        triviumTextField.accessibilityLabel = "Trivium Text Field"
        
        cancelButton.accessibilityLabel = "Cancel Button"
        cancelButton.accessibilityIdentifier = "Cancel Button"
        
        saveButton.accessibilityLabel = "Save Button"
        saveButton.accessibilityIdentifier = "Save Button"
        
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "Add Trivia Button"
        self.navigationItem.rightBarButtonItem?.accessibilityLabel = "Add Trivia Button"
        

    }

   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
