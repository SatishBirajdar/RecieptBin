//
//  CategoryPresenter.swift
//  RecieptBin
//
//  Created by Satish Birajdar on 2017-08-13.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

class CategoryPresenter {
    private let categoryService:CategoryService
    weak private var categoryView : CategoryPresenterView?
    
    init(categoryService:CategoryService){
        self.categoryService = categoryService
    }
    
    func attachView(view:CategoryPresenterView){
        categoryView = view
    }
    
    func detachView() {
        categoryView = nil
    }
    
    func getCategories(){

        if let categoriess: Array<Category> = categoryService.getCategories() {
            if(categoriess.count == 0){
//                self.categoryView?.setEmptyUsers()
                print("Empty category list")
            }else{
                let mappedCategories = categoriess.map{_ in 
                    return CategoryViewModel(name: "$0.name")
                }
                print("Not Empty category list")
                self.categoryView?.displayCategories(categories: mappedCategories)
            }
            
        }
        
        
        
        
//        categoryService.getCategories() { [weak self] users in
//            self?.userView?.finishLoading()
//            if(users.count == 0){
//                self?.userView?.setEmptyUsers()
//            }else{
//                let mappedUsers = users.map{
//                    return UserViewData(name: "\($0.firstName) \($0.lastName)", age: "\($0.age) years")
//                }
//                self?.userView?.setUsers(mappedUsers)
//            }
//            
//        }
        
        
    }
}
