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
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
    
    
    
//    @IBOutlet weak var emptyView: UIView?
//    @IBOutlet weak var tableView: UITableView?
//    @IBOutlet weak var activityIndicator: UIActivityIndicatorView?
    
    private let categoryPresenter = CategoryPresenter(categoryService: CategoryService())
    private var categorysToDisplay = [CategoryViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.dataSource = self
//        activityIndicator?.hidesWhenStopped = true
        
        categoryPresenter.attachView(view: self as! CategoryPresenterView)
        categoryPresenter.getCategories()
    }
    

//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
//        
//        return cell!
//    }
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//    
//    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categorysToDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "UserCell")
        let userViewData = categorysToDisplay[indexPath.row]
        cell.textLabel?.text = userViewData.name
//        cell.detailTextLabel?.text = CategoryViewModel.name
//        cell.textLabel
        return cell
    }
    
}

