//
//  FirstViewController.swift
//  PetTableViewApp
//
//  Created by Taylor Frost on 7/6/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    var DogArray = [Dog]()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.reloadData()
       
    }
    
    //    MARK: Table view data source

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataStore.sharedInstance.favoriteNumberOfDogs()
       
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DogsTableViewCell
        
        if let dogsTest = DataStore.sharedInstance.favoriteDogAt(indexPath.row){
        
        cell.dogNameLabel.text = dogsTest.name
        cell.dogImageView.image = UIImage(named: dogsTest.imageName)
        
        }
        
        return cell

    }

}