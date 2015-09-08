//
//  SearchSetting.swift
//  Yelp
//
//  Created by Andy (Liang) Dong on 9/6/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import Foundation


struct SearchSetting {
    let sortMode = [YelpSortMode.BestMatched, YelpSortMode.Distance, YelpSortMode.HighestRated]
    
    var searchString: String?
    var categories: [String]?
    var sort: YelpSortMode?
    
    var deals: Bool?
    
    
    
    init() {
        searchString = "Restaurants"
        categories = ["chinese", "thai"]
        sort = .Distance
        deals = false
    }
   
}