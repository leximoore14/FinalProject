//
//  HistoryController.swift
//  finalProject
//
//  Created by Alexis Moore on 4/26/20.
//  Copyright © 2020 Alexis Moore. All rights reserved.
//

import UIKit

class HistoryController: UIViewController {

    @IBOutlet weak var historyLabel: UILabel!
    
    
    var text: String? = nil
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyLabel.text = text

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
