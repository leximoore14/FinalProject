//
//  ViewController.swift
//  finalProject
//
//  Created by Alexis Moore on 4/23/20.
//  Copyright © 2020 Alexis Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var dateField: UITextField!
    @IBOutlet weak var artistField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    private var datePicker : UIDatePicker?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        datePicker = UIDatePicker ()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(ViewController.dateChanged(datePicker:)),
        for: .valueChanged)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        dateField.inputView = datePicker
        
        
        nameField.delegate = self
        priceField.delegate = self
        dateField.delegate = self
        artistField.delegate = self
        
    }

    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
        
    }
    
    @objc func dateChanged(datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
       dateField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
         }

    @IBAction func enterButton(_ sender: Any) {
        
        textView.text = "Name: \(nameField.text!)\nPrice: \(priceField.text!)\nDate: \(dateField.text!)\nArtist: \(artistField.text!)"
        
        
    }
    
}
extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let HistoryController = segue.destination as? HistoryController {
            HistoryController.text = textView.text
        }
    }
}










