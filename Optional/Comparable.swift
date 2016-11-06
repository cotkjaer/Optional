//
//  Comparable.swift
//  Optional
//
//  Created by Christian Otkjær on 06/11/16.
//  Copyright © 2016 Silverback IT. All rights reserved.
//

import Foundation

/// Compare two optionals `T`s
/// - parameter lhs : the left hand side of the `<`
/// - parameter rhs : the right hand side of the `<`
/// - returns : 1) `lhs! < rhs!` is both are non-nil, 2) `true` if `lhs` is nil and `rhs` is not - `nil` is less-than everything, or 3) `false` if `rhs` is nil and `lhs` is not
public func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool
{
    switch (lhs, rhs)
    {
    case let (l?, r?):
        return l < r
        
    case (nil, _?):
        return true
        
    case (_?, nil):
        return false
        
    default:
        return false
    }
}

/// Compare two optionals `T`s
/// - parameter lhs : the left hand side of the `<=`
/// - parameter rhs : the right hand side of the `<=`
/// - returns : 1) `lhs! <= rhs!` is both are non-nil, 2) `true` if `lhs` is nil and `rhs` is not - `nil` is less-than everything, or 3) `false` if `rhs` is nil and `lhs` is not
public func <= <T : Comparable>(lhs: T?, rhs: T?) -> Bool
{
    return lhs == rhs || lhs < rhs
}

/// Compare two optionals `T`s
/// - parameter lhs : the left hand side of the `>`
/// - parameter rhs : the right hand side of the `>`
/// - returns : 1) `lhs! > rhs!` is both are non-nil, 2) `true` if `rhs` is nil and `lhs` is not - `nil` is less-than everything, or 3) `false` if `lhs` is nil and `rhs` is not
public func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool
{
    return rhs < lhs
}

/// Compare two optionals `T`s
/// - parameter lhs : the left hand side of the `>=`
/// - parameter rhs : the right hand side of the `>=`
/// - returns : 1) `lhs! >= rhs!` is both are non-nil, 2) `true` if `rhs` is nil and `lhs` is not - `nil` is less-than everything, or 3) `false` if `lhs` is nil and `rhs` is not
public func >= <T : Comparable>(lhs: T?, rhs: T?) -> Bool
{
    return lhs == rhs || lhs > rhs
}
