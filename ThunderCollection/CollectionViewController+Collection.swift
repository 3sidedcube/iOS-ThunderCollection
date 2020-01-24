//
//  CollectionViewController+Collection.swift
//  ThunderCollection
//
//  Created by Simon Mitchell on 24/01/2020.
//  Copyright © 2020 3sidedcube. All rights reserved.
//

import Foundation

extension CollectionViewController {
    
    public subscript (index: IndexPath) -> (section: CollectionSectionDisplayable, row: CollectionItemDisplayable)? {
        
        guard index.section < data.count else {
            return nil
        }
        
        let section = data[index.section]
        guard index.row < section.items.count else {
            return nil
        }
        
        return (section, section.items[index.row])
    }
    
    public subscript (row index: IndexPath) -> CollectionItemDisplayable? {
        return self[index]?.row
    }
    
    public subscript (section index: IndexPath) -> CollectionSectionDisplayable? {
        
        guard index.section < data.count else {
            return nil
        }
        
        return data[index.section]
    }
}
