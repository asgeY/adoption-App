//
//  SecondViewController.swift
//  PetTableViewApp
//
//  Created by Taylor Frost on 7/6/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, CardStackDelegate {
    
    
    @IBOutlet weak var cardStackView: CardStack!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cardStackView.delegate = self
        
    }
    
    func cardInterested(dog: Dog) {
        print("Interested")
        DataStore.sharedInstance.addFavoriteDog(dog)
    }
    
    func cardNotInterested(dog: Dog) {
        print("Not interested")
        
    }



}

