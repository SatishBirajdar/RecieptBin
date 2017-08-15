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
//        let categoryArray: Array <Category> = []
        let categories = [Category(name:"Satish"), Category(name:"Nikhil")]
        
        return categories
    }
    
//    func getCategories(callBack: @escaping ([Category]) -> Void){
//        let categories = [Category(name:"Satish"), Category(name:"Nikhil")]
//        
//        let delayTime = DispatchTime.now(dispatch_time_t(DispatchTime.now()), Int64(2 * Double(NSEC_PER_SEC)))
//        dispatch_after(delayTime, dispatch_get_main_queue()) {
//            callBack(categories)
//        }
//    }
//    
//    func getUsers(callBack:([User]) -> Void){
//        let users = [User(firstName: "Iyad", lastName: "Agha", email: "iyad@test.com", age: 36),
//                     User(firstName: "Mila", lastName: "Haward", email: "mila@test.com", age: 24),
//                     User(firstName: "Mark", lastName: "Astun", email: "mark@test.com", age: 39)
//        ]
//        
//        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(2 * Double(NSEC_PER_SEC)))
//        dispatch_after(delayTime, dispatch_get_main_queue()) {
//            callBack(users)
//        }
//    }
    
}
