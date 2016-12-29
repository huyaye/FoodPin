//
//  Restaurant.swift
//  FoodPin
//
//  Created by 유정욱 on 2016. 12. 28..
//  Copyright © 2016년 AppCoda. All rights reserved.
//

import Foundation

class Restaurant {
    var name = ""
    var type = ""
    var location = ""
    var phone = ""
    var image = ""
    var isVisited = false
    var rating = ""
    
    init(name: String, type: String, location: String, phone: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.image = image
        self.isVisited = isVisited
    }
}
