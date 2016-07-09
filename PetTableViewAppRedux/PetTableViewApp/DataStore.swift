//
//  DataStore.swift
//  PetTableViewApp
//
//  Created by Taylor Frost on 7/8/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class DataStore: NSObject {
    
    static let sharedInstance = DataStore()
    private override init() {}
    
    private var DogArray = [Dog]()
    private var favoriteDogArray = [Dog]()
    
    func seedDogs() {
        
        let athena = Dog(name: "Athena", age:"5 Years", imageName:"Athena", breed:"Chihuahua", size:"Small", gender:"Female")
        self.DogArray.append(athena)
        
        let audi = Dog(name: "Audi", age: "8 Months", imageName: "Audi", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(audi)
        
        let basil = Dog(name: "Basil", age: "6 Years", imageName: "Basil", breed: "Crossbreed", size: "Large", gender: "Male")
        self.DogArray.append(basil)
        
        let beaufort = Dog(name: "Beaufort", age: "6 Years", imageName: "Beaufort", breed: "Hound", size: "Large", gender: "Male")
        self.DogArray.append(beaufort)
        
        let binkers = Dog(name: "Binkers", age: "9 Years", imageName: "Cotechino", breed: "Chihuahua", size: "Small", gender: "Male")
        self.DogArray.append(binkers)
        
        let birolodo = Dog(name: "Birolodo", age: "4 Years", imageName: "Biroldo", breed: "Crossbreed", size: "Small", gender: "Male")
        self.DogArray.append(birolodo)
        
        let calvin = Dog(name: "Calvin", age: "7 Years", imageName: "Calvin", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.DogArray.append(calvin)
        
        let caspian = Dog(name: "Caspian", age: "1 Year", imageName: "Caspian", breed: "Pit Bull", size: "Large", gender: "Large")
        self.DogArray.append(caspian)
        
        let cher = Dog(name: "Cher", age: "3 Years", imageName: "Cher", breed: "Crossbreed", size: "Small", gender: "Female")
        self.DogArray.append(cher)
        
        let cora = Dog(name: "Cora", age: "5 Years", imageName: "Cora", breed: "Pit Bull", size: "Large", gender: "Female")
        self.DogArray.append(cora)
        
        let daisy = Dog(name: "Daisy", age: "4 Years", imageName: "Daisy", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(daisy)
        
        let flick = Dog(name: "Flick", age: "2 Years", imageName: "Flick", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.DogArray.append(flick)
        
        let froggers = Dog(name: "Froggers", age: "2 Years", imageName: "Froggers", breed: "Crossbreed", size: "Large", gender: "Male")
        self.DogArray.append(froggers)
        
        let hendrick = Dog(name: "Hendrick", age: "2 Years", imageName: "Hendrick", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.DogArray.append(hendrick)
        
        let jude = Dog(name: "Jude", age: "1 Year", imageName: "Jude", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(jude)
        
        let kellie = Dog(name: "Kellie", age: "1 Year", imageName: "Kellie", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(kellie)
        
        let kevin = Dog(name: "Kevin", age: "3 Years", imageName: "Kevin", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(kevin)
        
        let lady = Dog(name: "Lady", age: "2 Years", imageName: "Lady", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(lady)
        
        let liesl = Dog(name: "Liesl", age: "1 Year", imageName: "Liesl", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(liesl)
        
        let lucy = Dog(name: "Lucy", age: "2 Years", imageName: "Lucy", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(lucy)
        
    }
    
    func dogAt(index: Int) -> Dog? {
        
        if self.DogArray.count >= 0 && index < self.DogArray.count {
            return self.DogArray[index]
        }
        
        return nil
    }
    
    func favoriteDogAt(index: Int) -> Dog? {
        if self.favoriteDogArray.count >= 0 && index < self.favoriteDogArray.count {
            return self.favoriteDogArray[index]
        }
        
        return nil
    }

    func addDog(dog: Dog){
        self.DogArray.append(dog)
    }
    
    func addFavoriteDog(dog: Dog){
        self.favoriteDogArray.append(dog)
    }
    
    func numberOfDogs() -> Int {
        return self.DogArray.count
    }
    
    func favoriteNumberOfDogs() -> Int {
        return self.favoriteDogArray.count
    }

}
