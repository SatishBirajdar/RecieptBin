//
//  CategoryListContract.swift
//  RecieptBin
//
//  Created by Satish Birajdar on 2017-08-13.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import Foundation
import PromiseKit

protocol CategoryViewDataModel{
    var name: String { get }
}

protocol CategoryPresenterView: AnyObject{
    func displayCategories(categories: Promise<Array<CategoryViewDataModel>>)
}

protocol CategoryPresentor{
    func attachView(view: CategoryPresenterView)
//    func loadCategories()
}


