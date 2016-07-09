//
//  Dog.swift
//  DataStoreTestApp
//
//  Created by Taylor Frost on 7/7/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class Dog: NSObject {
    
    var name: String = ""
    var age: String = ""
    var imageName: String = ""
    var breed: String = ""
    var size: String = ""
    var gender: String = ""
    
    init(name: String, age: String, imageName: String, breed: String, size: String, gender: String) {
        self.name = name
        self.age = age
        self.imageName = imageName
        self.breed = breed
        self.size = size
        self.gender = gender
        
    }

}
