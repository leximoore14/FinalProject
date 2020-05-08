//
//  OutcomeController.swift
//  finalProject
//
//  Created by Alexis Moore on 4/26/20.
//  Copyright © 2020 Alexis Moore. All rights reserved.
//

import UIKit

class OutcomeController: UIViewController {
    
    var place:Int = 0
    var noise:Int = 0
    var price:Int = 0
    var food:Int = 0
    var total:Int = 0

    @IBOutlet weak var myTotal: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    
    
    @IBAction func placeChoice(_ sender: UISwitch) {
        if sender.isOn {
                  place = 1
              }
             else {
                  place = 0
              }
    }
    
    @IBAction func noiseChoice(_ sender: UISwitch) {
        if sender.isOn {
                  noise = 1
              }
             else {
                  noise = 0
              }
    }
    
    @IBAction func priceChoice(_ sender: UISwitch) {
        if sender.isOn {
                  price = 1
              }
             else {
                  price = 0
              }
    }
    
    
    @IBAction func foodChoice(_ sender: UISwitch) {
        if sender.isOn {
                  food = 1
              }
             else {
                  food = 0
              }
    }
    

    @IBAction func submitButton(_ sender: Any) {
      total = place + noise + price + food
        if(total <= 1) {
            myTotal.text = "Try Barbarellas! This club will be found in the heart of Austin and provides for fun and long night"
            myImage.image = UIImage(named: "barb")
          
        }
        else if(total > 1 && total <= 3){
            myTotal.text = "Try Stubbs! This venue is great for a chill or rocking time. Prices are decent but watch for the big performances, prices skyrocket."
            myImage.image = UIImage(named: "stubbs")
          
        }
        else {
            myTotal.text = "Head on over to 6th street for a wide arange of food and good music!"
            myImage.image = UIImage(named: "sixth")
       
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
