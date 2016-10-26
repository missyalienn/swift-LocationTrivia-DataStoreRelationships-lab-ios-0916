//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Missy Allan on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {
   
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var latitudeTextField: UITextField!
    
    @IBOutlet weak var longitudeTextField: UITextField!
    

    @IBAction func saveButtonTapped(_ sender: AnyObject) {
        
       var latFloat: Float = 0.0
       var longFloat: Float = 0.0
        
        let nameInput = nameTextField.text!
        
        if let latitudeInput = latitudeTextField.text {
            let latFloat = Float(latitudeInput)
        }
        
        if let longitudeInput = longitudeTextField.text {
            let longFloat = Float(longitudeInput)
        }
        
       let newLocation = Location(name: nameTextField.text! , latitude: latFloat, longitude: longFloat)
        
        LocationsDataStore.sharedInstance.locations.append(newLocation)
        
        self.dismiss(animated: true, completion: nil)
        

    }
    
    
    @IBAction func cancelButtonTapped(_ sender: AnyObject) {
        
      self.dismiss(animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.accessibilityLabel = "nameField"
        nameTextField.accessibilityIdentifier = "nameField"
        
        latitudeTextField.accessibilityLabel = "latitudeField"
        latitudeTextField.accessibilityIdentifier = "latitudeField"
        
        longitudeTextField.accessibilityLabel = "longitudeField"
        longitudeTextField.accessibilityIdentifier = "longitudeField"
        
        //saveButton.accessibilityLabel = "saveButton"
        //saveButton.accessibilityIdentifier = "saveButton"
        
        //cancelButton.accessibilityLabel = "cancelButton"
        //cancelButton.accessibilityIdentifier = "cancelButton"
    
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
