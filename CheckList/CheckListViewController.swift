//
//  ViewController.swift
//  CheckList
//
//  Created by Cem TAŞKIN on 28.04.2023.
//

import UIKit

class CheckListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem",for:indexPath)
        
        let label =  cell.viewWithTag(1000) as! UILabel
        label.text = "\(indexPath.row)"
        
        return cell
    }
   

}

