//
//  ToDoController.swift
//  finalProject
//
//  Created by Alexis Moore on 4/26/20.
//  Copyright © 2020 Alexis Moore. All rights reserved.
//

import UIKit

class ToDoController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
var newsItems = ["Tyler, the Creator", "Cage the Elephant", "Tame Impala"]
    
    
    
    
    
    @IBOutlet weak var toDo: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsItems.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell")
        cell?.textLabel?.text = newsItems[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           let selection = newsItems[indexPath.row]
           if (selection == "Artist 1") {
               performSegue(withIdentifier: "tylerSegue", sender: self)
           }
           else if (selection == "Artist 2") {
               performSegue(withIdentifier: "cageSegue", sender: self)
           }
           else if (selection == "Artist 3") {
               performSegue(withIdentifier: "tameSegue", sender: self)
           }
       }
       
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDo.delegate = self
        toDo.dataSource = self
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
