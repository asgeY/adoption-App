//
//  ViewController.swift
//  DataStoreTestApp
//
//  Created by Taylor Frost on 7/7/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var adoptedDogsArray = [Dog]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let d = DataStore.sharedInstance.dogAt(4){
            self.adoptedDogsArray.append(d)
        }
        
        if let d = DataStore.sharedInstance.dogAt(1){
            self.adoptedDogsArray.append(d)
        }
        
        if let d = DataStore.sharedInstance.dogAt(17){
            self.adoptedDogsArray.append(d)
        }
        
        print(self.adoptedDogsArray.count)
        
    }
}

