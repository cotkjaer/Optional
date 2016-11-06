//
//  ComparableTests.swift
//  Optional
//
//  Created by Christian Otkjær on 06/11/16.
//  Copyright © 2016 Silverback IT. All rights reserved.
//

import XCTest
@testable import Optional
class ComparableTests: XCTestCase
{
    let a : Int? = 0
    let b : Int? = 37
    let c : Int? = nil

    func test_greater_than()
    {
        XCTAssertTrue(b > a)
        XCTAssertTrue(b > c)
        XCTAssertTrue(a > c)
        
        XCTAssertFalse(a > a)
        XCTAssertFalse(b > b)
        XCTAssertFalse(c > c)
        
        XCTAssertFalse(c > a)
        XCTAssertFalse(c > b)
        XCTAssertFalse(a > b)
    }

    func test_greater_than_or_equal()
    {
        XCTAssertTrue(b >= a)
        XCTAssertTrue(b >= c)
        XCTAssertTrue(a >= c)
        
        XCTAssertTrue(a >= a)
        XCTAssertTrue(b >= b)
        XCTAssertTrue(c >= c)
        
        XCTAssertFalse(c >= a)
        XCTAssertFalse(c >= b)
        XCTAssertFalse(a >= b)
    }

    func test_less_than()
    {
        XCTAssertTrue(c < a)
        XCTAssertTrue(c < b)
        XCTAssertTrue(a < b)

        XCTAssertFalse(a < a)
        XCTAssertFalse(b < b)
        XCTAssertFalse(c < c)

        XCTAssertFalse(a < c)
        XCTAssertFalse(b < c)
    }
    
    func test_less_than_or_equal()
    {
        XCTAssertTrue(c <= a)
        XCTAssertTrue(c <= b)
        XCTAssertTrue(a <= b)
        
        XCTAssertTrue(a <= a)
        XCTAssertTrue(b <= b)
        XCTAssertTrue(c <= c)
        
        XCTAssertFalse(a <= c)
        XCTAssertFalse(b <= c)
        XCTAssertFalse(b <= a)
    }

    
}
