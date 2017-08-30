//
//  CategoryService.swift
//  RecieptBin
//
//  Created by Satish Birajdar on 2017-08-13.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import Foundation
import PromiseKit

protocol RecieptService{
    func getReciepts() -> Array <Reciept>
}

class RecieptServiceImpl: RecieptService {
    
    var utils: Utils = Utils()
    
    func getReciepts() -> Array <Reciept>{

        let reciepts = [
        Reciept(title: "New York Trip", date: utils.toStringg(date: NSDate()), currency: "CAD",amount: 898),
        Reciept(title: "Dallas Trip", date: utils.toStringg(date: NSDate()), currency: "CAD", amount: 898)
        ]
       
        return reciepts
    }
    
    
    
//    func dateToStringg(date: NSDate) -> String {
//        let dateFormate = DateFormatter()
//        dateFormate.dateFormat = "MMM d, yyyy"
//        //        let date = NSDate()
//        let stringOfDate = dateFormate.string(from: date as Date)
//        return stringOfDate
//        
//    }
}
