//
//  ViewController.swift
//  MyiOSTrialTableView
//
//  Created by Home on 21/04/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let elements = ["a","b","c","d","a","b","c","d"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }


    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return elements.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
       
            let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
            cell.animalLbl.text = elements[indexPath.row]
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
            cell.animalImage.image = UIImage(named:elements[indexPath.row])
        cell.animalImage.layer.cornerRadius = cell.animalImage.frame.height / 2
            return cell
       
    }

    @IBOutlet var tableView: UITableView!
    
}

