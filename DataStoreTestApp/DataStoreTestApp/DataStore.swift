//
//  DataStore.swift
//  DataStoreTestApp
//
//  Created by Taylor Frost on 7/7/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class DataStore: NSObject {
    
    static let sharedInstance = DataStore()
    private override init(){}
    
    private var allDogs = [Dog]()
    
    func seedDogs() {
        
        for i in 1...20 {
            let d = Dog()
            d.name = "\(i) Dog Name"
            self.addDog(d)
            
        }
    }
    
    func dogAt(index: Int) -> Dog? {
        
        if self.allDogs.count > 0 || self.allDogs.count <= index {
            return self.allDogs[index]
        }
        
        return nil
        
    }
    
    func addDog(dog: Dog){
        self.allDogs.append(dog)
    }
    
    func numberOfDogs() -> Int {
        return self.allDogs.count
    }
    
    

}
