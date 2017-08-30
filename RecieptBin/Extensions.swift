//
//  Extensions.swift
//  RecieptBin
//
//  Created by Satish Birajdar on 2017-08-28.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import Foundation

class Utils {

    func toStringg(date: NSDate) -> String {
        let dateFormate = DateFormatter()
        dateFormate.dateFormat = "MMM d, yyyy"
//        let date = NSDate()
        let stringOfDate = dateFormate.string(from: date as Date)
        return stringOfDate
        
    }
    
}
