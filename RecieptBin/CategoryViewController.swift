//
//  ViewController.swift
//  RecieptBin
//
//  Created by Satish Birajdar on 2017-08-10.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import UIKit


class CategoryViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
  
    private let categoryPresenter = CategoryPresenter(categoryService: CategoryService())
    private var categorysToDisplay = [CategoryViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.dataSource = self
        
        categoryPresenter.attachView(view: self as! CategoryPresenterView)
        categoryPresenter.getCategories()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categorysToDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "UserCell")
        let userViewData = categorysToDisplay[indexPath.row]
        cell.textLabel?.text = userViewData.name
        return cell
    }
    
}

