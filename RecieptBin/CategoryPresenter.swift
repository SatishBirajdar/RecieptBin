//
//  CategoryPresenter.swift
//  RecieptBin
//
//  Created by Satish Birajdar on 2017-08-13.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

class CategoryPresenterImpl: CategoryPresentor {
    private let categoryService:CategoryService
    weak private var categoryView : CategoryPresenterView?
    
    init(service: CategoryService = CategoryServiceImpl()){
        self.categoryService = service
    }
    
    func attachView(view:CategoryPresenterView){
        categoryView = view
    }
    
    func detachView() {
        categoryView = nil
    }
    
//    func loadCategories(){
//
//    if let categories: Array<Category> = categoryService.getCategories() {
//        if(categories.count == 0){
//            print("Empty category list")
//        }else{
//            
//            let mappedCategories = categories.map{ item in
//                return CategoryViewDataModel(name: "\(item.firstName) \(item.lastName)")
//            }
//            self.categoryView?.displayCategories(categories: mappedCategories)
//            print("Not Empty category list")
//            
//        }
//        
//    }
//  }
}
