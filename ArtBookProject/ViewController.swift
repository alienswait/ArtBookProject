//
//  ViewController.swift
//  ArtBookProject
//
//  Created by Mertcan Ünek on 14.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
    }
    
    
    @objc func addButtonClicked(){
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    
}

