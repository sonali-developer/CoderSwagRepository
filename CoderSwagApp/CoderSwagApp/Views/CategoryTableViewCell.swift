//
//  CategoryTableViewCell.swift
//  CoderSwagApp
//
//  Created by Sonali Patel on 1/11/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
