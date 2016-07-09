//
//  ThirdViewController.swift
//  PetTableViewApp
//
//  Created by Taylor Frost on 7/7/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return DataStore.sharedInstance.numberOfDogs()
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! DogCollectionViewCell
        
        let dogsTest = DataStore.sharedInstance.dogAt(indexPath.row)
        
        if let image = dogsTest?.image {
        cell.dogImageView.image = image
            
        }
        return cell
    }

}
