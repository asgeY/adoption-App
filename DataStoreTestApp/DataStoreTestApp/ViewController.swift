//
//  ViewController.swift
//  DataStoreTestApp
//
//  Created by Taylor Frost on 7/7/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    //var adoptedDogsArray = [Dog]()

    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return DataStore.sharedInstance.numberOfDogs() 
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CollectionViewCell
        
        let dogsTest = DataStore.sharedInstance.dogAt(indexPath.row)
        
        cell.dogImageView.image = UIImage(named: dogsTest!.imageName)
        
        
        return cell
    }
    
    
}

