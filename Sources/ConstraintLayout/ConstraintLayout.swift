//
// Created by Eduardo Appolinario on 2021-10-19.
//

import Foundation
import UIKit

public class ConstraintLayout {
    public static var marginProvider: ConstraintLayoutMarginProvider = ConstraintLayoutDefaultMarginProvider()

    public enum Keys: String {
        case widthEqualTo = "widthEqualTo"
        case widthEqualToConstant = "widthEqualToConstant"
        case widthGreaterThanOrEqualToConstant = "widthGreaterThanOrEqualToConstant"
        case widthGreaterThanOrEqualTo = "widthGreaterThanOrEqualTo"
        case widthLessThanOrEqualToConstant = "widthLessThanOrEqualToConstant"
        case widthLessThanOrEqualTo = "widthLessThanOrEqualTo"

        case heightEqualTo = "heightEqualTo"
        case heightEqualToConstant = "heightEqualToConstant"
        case heightGreaterThanOrEqualToConstant = "heightGreaterThanOrEqualToConstant"
        case heightGreaterThanOrEqualTo = "heightGreaterThanOrEqualTo"
        case heightLessThanOrEqualToConstant = "heightLessThanOrEqualToConstant"
        case heightLessThanOrEqualTo = "heightLessThanOrEqualTo"

        case leadingEqualTo = "leadingEqualTo"

        case trailingEqualTo = "trailingEqualTo"

        case leftEqualTo = "leftEqualTo"

        case rightEqualTo = "rightEqualTo"

        case topEqualTo = "topEqualTo"

        case bottomEqualTo = "bottomEqualTo"

        case centerXEqualTo = "centerXEqualTo"

        case centerYEqualTo = "centerYEqualTo"
    }

    public let owner: UIView
    
    private var debugIdentifier: String? = nil

    init(_ view: UIView) {
        self.owner = view;
    }
    
    var constraints = [ConstraintLayout.Keys: NSLayoutConstraint]()

    public func checkIfAutoLayoutIsEnabled() {
        if (owner.translatesAutoresizingMaskIntoConstraints) {
            owner.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    public func removeConstraint(key: Keys) {
        if let constraint = self.constraints[key] {
            constraint.isActive = false
            self.owner.removeConstraint(constraint)
        }
        
        self.constraints.removeValue(forKey: key)

        let constraintIdentifier: String!

        if let debugIdentifier = self.debugIdentifier {
            constraintIdentifier = "\(key.rawValue)-\(debugIdentifier)"
        } else {
            constraintIdentifier = key.rawValue
        }
                
        if let existingConstraint = self.owner.constraints.first(where: { c in
            c.identifier == constraintIdentifier
        }) {
            existingConstraint.isActive = false
            self.owner.removeConstraint(existingConstraint)
        }
    }
    
    
    /// Should only be used during Development process
    /// - Parameter debugIdentifier: This identifier will be added as a suffix to the constraint name
    func setDebugIdentifier(_ debugIdentifier: String) -> Self {
        self.debugIdentifier = debugIdentifier
        return self
    }

    @discardableResult
    public func resetAllConstraints() -> ConstraintLayout {
        self.owner.removeConstraints(owner.constraints)
        return self
    }
    
    public func activateAllConstraints() {
        self.owner.constraints.forEach { $0.isActive = true }
    }

    public func configureConstraint(key: ConstraintLayout.Keys, buildConstraint: () -> NSLayoutConstraint, priority: Float? = nil) -> ConstraintLayout {
        self.checkIfAutoLayoutIsEnabled()
        self.removeConstraint(key: key)
        let constraint = buildConstraint()
        
        let constraintIdentifier: String!
        
        if let debugIdentifier = self.debugIdentifier {
            constraintIdentifier = "\(key.rawValue)-\(debugIdentifier)"
        } else {
            constraintIdentifier = key.rawValue
        }
        
        constraint.identifier = constraintIdentifier
        if let priority = priority {
            constraint.priority = UILayoutPriority(priority)
        }
        constraint.isActive = true
        self.constraints[key] = constraint
        return self
    }

    public enum Margin: CGFloat {
        case none = 0
        case `default` = 16
        case large = 24
        case small = 12
        case xsmall = 8
        case xxsmall = 4
        case double = 32
        case triple = 48
        
        public func negative() -> CGFloat {
            return self.rawValue * -1
        }
    }
}

public protocol ConstraintLayoutMarginProvider {
    func getMarginSize(_ margin: ConstraintLayout.Margin) -> CGFloat
}

public struct ConstraintLayoutDefaultMarginProvider: ConstraintLayoutMarginProvider {
    public func getMarginSize(_ margin: ConstraintLayout.Margin) -> CGFloat {
        return margin.rawValue
    }
}
