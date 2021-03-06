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
        if let index = allItems.indexOf(newItem) {
            moveItemAtIndex(index, toIndex: 0)
        }
        
        return newItem
    }
    
    func moveItemAtIndex(fromIndex: Int, toIndex: Int) {
        
        if fromIndex == toIndex {
            return
        }
        
        let movedItem = allItems[fromIndex]
        allItems.removeAtIndex(fromIndex)
        allItems.insert(movedItem, atIndex: toIndex)
    }
    
    func removeItem(item: Item) {
        if let index = allItems.indexOf(item) {
            allItems.removeAtIndex(index)
        }
    }
    
    init() {
        let permItem = Item(name: "No more items!", serialNumber: nil, valueInDollars: 0)
        allItems.append(permItem)
    }
}
