//
//  ItemStore.swift
//  Homepwner
//
//  Created by Dacio Leal Rodriguez on 13/2/16.
//  Copyright © 2016 Dacio Leal Rodriguez. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
    func createItem() -> Item {
        
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    init() {
        
        for _ in 0..<5 {
            
            createItem()
        }
    }
}
