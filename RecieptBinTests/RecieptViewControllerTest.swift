//
//  RecieptViewControllerTest.swift
//  RecieptBin
//
//  Created by Satish Birajdar on 2017-08-28.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import XCTest

@testable import RecieptBin

class RecieptViewControllerTest: XCTestCase {
    
    private var subject: RecieptViewController!
    private var presenter: PresenterSpy!
    
    private var reciepts: [Reciept] = []
    
    override func setUp() {
        super.setUp()
        subject = RecieptViewController()
        presenter = PresenterSpy()
        
        let window = UIWindow()
        
        reciepts = [Reciept(firstName: "Rohan", lastName: "Acharya"),Reciept(firstName: "Ankit",lastName: "Kumar")]
        
        window.rootViewController = subject
        window.makeKeyAndVisible()
        subject.displayReciepts(reciepts: reciepts)
        
    }
    
    func testRecieptTableRowCount(){
        XCTAssertEqual(subject.tableView.numberOfRows(inSection: 0),2)
    }
    
    
}

private class PresenterSpy: RecieptPresenter{
    func attachView(view: RecieptPresenterView){
        
    }
}
