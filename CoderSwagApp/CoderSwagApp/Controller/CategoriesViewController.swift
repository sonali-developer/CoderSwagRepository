//
//  ViewController.swift
//  CoderSwagApp
//
//  Created by Sonali Patel on 1/11/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell") as? CategoryTableViewCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else {
            return CategoryTableViewCell()
        }
      
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
        
    }
    

 
   

}

