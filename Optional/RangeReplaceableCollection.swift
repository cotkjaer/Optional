//
//  RangeReplaceableCollection.swift
//  Optional
//
//  Created by Christian Otkjær on 06/11/16.
//  Copyright © 2016 Silverback IT. All rights reserved.
//

public extension RangeReplaceableCollection where Index : Strideable
{
    /**
     Sets the element at the specified optional index, if it exists and is within the collections bounds.
     
     - parameter index: the optional index to look up
     - returns: the element at the index in `self`
     */
    
    @discardableResult
    public mutating func set(element: Generator.Element?, at index: Index?) -> Generator.Element?
    {
        guard let index = index else { return nil }
        
        guard let element = element else { return nil }
        
        guard startIndex.distance(to:index) >= 0 else { return nil }
        
        let distanceToEnd = index.distance(to:endIndex)
        
        guard distanceToEnd >= 0 else { return nil }
        
        if distanceToEnd > 0
        {
            replaceSubrange(index..<index.advanced(by:1), with: [element])
        }
        else
        {
            append(element)
        }
        
        return element
    }
}
