//
//  CategoryListContract.swift
//  RecieptBin
//
//  Created by Satish Birajdar on 2017-08-13.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import Foundation
import PromiseKit

protocol RecieptViewDataModel{
    var modelTitle: String { get }
    var modelDate: String { get }
    var modelCost: String { get }
}

protocol RecieptPresenterView: AnyObject{
    func displayReciepts(reciepts: Array<RecieptViewDataModel>)
}

protocol RecieptPresenter{
    func attachView(view: RecieptPresenterView)
}


