//
//  CGPointExtensions.swift
//  UIViewExtensions
//
//  Created by Diogo Infante on 30/10/21.
//

import UIKit

/// CGPoint Extensions.
extension CGPoint {
    /// Multiplies both coordinates by a factor.
    /// - Parameters:
    ///     - factor.
    func multiply(by factor: CGFloat) -> CGPoint {
        let newPoint = CGPoint(x: x*factor, y: y*factor)
        return newPoint
    }
    /// Multiplies both coordinates by a factor.
    /// - Parameters:
    ///     - xCoeficient.
    ///     - yCoeficient.
    func multiply(_ xCoeficient: CGFloat, _ yCoeficient: CGFloat) -> CGPoint {
        let newPoint = CGPoint(x: x*xCoeficient, y: y*yCoeficient)
        return newPoint
    }
    /// Add a constant to x coordinates.
    /// - Parameters:
    ///     - constant.
    func addTo(x constant: CGFloat) -> CGPoint {
        let newPoint = CGPoint(x: x+constant, y: y)
        return newPoint
    }
    /// Add a constant to x coordinates.
    /// - Parameters:
    ///     - constant
    func addTo(y constant: CGFloat) -> CGPoint {
        let newPoint = CGPoint(x: x, y: y+constant)
        return newPoint
    }
    /// Add a constant to both coordinates.
    /// - Parameters:
    ///     - constant
    func add(constant: CGFloat) -> CGPoint {
        let newPoint = CGPoint(x: x+constant, y: y+constant)
        return newPoint
    }
}
