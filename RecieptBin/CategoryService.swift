//
//  CategoryService.swift
//  RecieptBin
//
//  Created by Satish Birajdar on 2017-08-13.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import Foundation

class CategoryService{
    
    func getCategories() -> Array <Category>{
        let categories = [Category(name:"Satish"),
                          Category(name:"Nikhil")]
       
        return categories
    }    
}
