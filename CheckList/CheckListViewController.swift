//
//  ViewController.swift
//  CheckList
//
//  Created by Cem TAŞKIN on 28.04.2023.
//

import UIKit

class CheckListViewController: UITableViewController {
    var items  = [ChechkListItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var item0 = ChechkListItem()
        item0.text="Walk the dog"
        item0.checked=false
        
        
        var item1 = ChechkListItem()
        item1.text="Brush the teeth"
        item1.checked=true
        
        items.append(item0)
        items.append(item1)
        
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem",for:indexPath)
        
        let label =  cell.viewWithTag(1000) as! UILabel
        
        let item = items[indexPath.row]
        label.text = "\(item.text)"
        
    
        
        return cell
    }
   
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath){
            if (cell.accessoryType == .checkmark){
                cell.accessoryType = .none
            }else{
                cell.accessoryType = .checkmark
            }
        }
        tableView.deselectRow(at: indexPath, animated: false)
        
    }

}

