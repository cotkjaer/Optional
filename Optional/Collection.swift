//
//  Collection.swift
//  Optional
//
//  Created by Christian Otkjær on 06/11/16.
//  Copyright © 2016 Silverback IT. All rights reserved.
//

import Foundation

// MARK: - Get

public extension Collection where Index : Strideable
{
    /**
     Gets the element at the specified (optional) index, if it exists and is within the collections bounds.
     
     - parameter index: the optional index to look up
     - returns: `self[index!]` if `index` is non-nil and `startIndex <= index < endIndex`, `nil` otherwise
     */
    func get(_ index: Index?) -> Iterator.Element?
    {
        guard let index = index else { return nil }
        
        guard startIndex.distance(to:index) >= 0 else { return nil }
        
        guard index.distance(to:endIndex) > 0 else { return nil }
        
        return self[index]
    }
}
