//
//  CollectionTests.swift
//  Optional
//
//  Created by Christian Otkjær on 06/11/16.
//  Copyright © 2016 Silverback IT. All rights reserved.
//

import XCTest

class CollectionTests: XCTestCase
{
    func test_get()
    {
        var array = Array(arrayLiteral: 1,2,3,4)
        
        XCTAssertNil(array.get(nil))
        XCTAssertNil(array.get(-1))
        XCTAssertNil(array.get(4))
        XCTAssertNil(array.get(10000))
        
        XCTAssertEqual(array.get(3), 4)
        array.removeFirst()
        XCTAssertNil(array.get(3))
        
        array.append(5)
        XCTAssertEqual(array.get(3), 5)
    }
    
    func test_set()
    {
        var array = Array(arrayLiteral: 1,2,3,4)
        
        array.set(element: nil, at: nil)
        
        XCTAssertEqual(array, Array(arrayLiteral: 1,2,3,4))
        
        
        array.set(element: 1, at: nil)
        
        XCTAssertEqual(array, Array(arrayLiteral: 1,2,3,4))
        
        
        array.set(element: nil, at: 1)
        
        XCTAssertEqual(array, Array(arrayLiteral: 1,2,3,4))
        
        array.set(element: 1, at: 1)
        
        XCTAssertEqual(array, Array(arrayLiteral: 1,1,3,4))

        array.set(element: 5, at: 4)
        
        XCTAssertEqual(array, Array(arrayLiteral: 1,1,3,4,5))
    }
}
