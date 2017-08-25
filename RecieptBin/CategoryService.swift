//
//  CategoryService.swift
//  RecieptBin
//
//  Created by Satish Birajdar on 2017-08-13.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import Foundation
import PromiseKit

protocol CategoryService{
    func getCategories() -> Promise<Array <Category>>
}

class CategoryServiceImpl: CategoryService {
    
    func getCategories() -> Promise<Array <Category>>{
        
        
        let categories = [Category(firstName:"Satish", lastName:"Birajdar"),
                          Category(firstName:"Nikhil", lastName:"Dekosta")]
       
        return Promise(value: categories)
        
        
    }    
}
