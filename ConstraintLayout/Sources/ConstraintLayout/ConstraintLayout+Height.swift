//
// Created by Eduardo Appolinario on 2021-10-23.
//

import Foundation
import UIKit

public extension ConstraintLayout {
    
    @discardableResult
    func heightEqualsTo(_ layoutDimension: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .heightEqualTo,
                buildConstraint: {
                    self.owner.heightAnchor.constraint(equalTo: layoutDimension, multiplier: multiplier, constant: constant)
                },
                priority: priority
        )
    }

    @discardableResult
    func height(_ height: CGFloat, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .heightEqualToConstant,
                buildConstraint: {
                    self.owner.heightAnchor.constraint(equalToConstant: height)
                },
                priority: priority
        )
    }

    @discardableResult
    func heightEqualsTo(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.heightEqualsTo(view.heightAnchor, multiplier: multiplier, constant: constant, withPriority: priority)
    }

    @discardableResult
    func heightEqualsTo(_ layoutGuide: UILayoutGuide, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.heightEqualsTo(layoutGuide.heightAnchor, multiplier: multiplier, constant: constant, withPriority: priority)
    }

    @discardableResult
    func heightEqualsToSafeArea(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.heightEqualsTo(view.safeAreaLayoutGuide, multiplier: multiplier, constant: constant, withPriority: priority)
    }

    @discardableResult
    func heightEqualsParent(multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.heightEqualsTo(superview, multiplier: multiplier, constant: constant, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func heightEqualsParentSafeArea(multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.heightEqualsToSafeArea(superview, multiplier: multiplier, constant: constant, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func heightEqualsWidth(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.heightEqualsTo(view.widthAnchor, multiplier: multiplier, constant: constant, withPriority: priority)
    }

    @discardableResult
    func heightEqualsWidth(multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return heightEqualsWidth(owner, multiplier: multiplier, constant: constant, withPriority: priority)
    }

    @discardableResult
    func heightGreaterThanOrEqualTo(_ constant: CGFloat, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .heightGreaterThanOrEqualToConstant,
                buildConstraint: {
                    self.owner.heightAnchor.constraint(greaterThanOrEqualToConstant: constant)
                },
                priority: priority
        )
    }

    @discardableResult
    func heightGreaterThanOrEqualToHeight(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .heightGreaterThanOrEqualTo,
                buildConstraint: {
                    self.owner.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor, multiplier: multiplier, constant: constant)
                },
                priority: priority
        )
    }

    @discardableResult
    func heightGreaterThanOrEqualToWidth(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .heightGreaterThanOrEqualTo,
                buildConstraint: {
                    self.owner.heightAnchor.constraint(greaterThanOrEqualTo: view.widthAnchor, multiplier: multiplier, constant: constant)
                },
                priority: priority
        )
    }

    @discardableResult
    func heightLessThanOrEqualTo(_ height: CGFloat, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .heightLessThanOrEqualToConstant,
                buildConstraint: {
                    self.owner.heightAnchor.constraint(lessThanOrEqualToConstant: height)
                },
                priority: priority
        )
    }

    @discardableResult
    func heightLessThanOrEqualToHeight(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .heightLessThanOrEqualTo,
                buildConstraint: {
                    self.owner.heightAnchor.constraint(lessThanOrEqualTo: view.heightAnchor, multiplier: multiplier, constant: constant)
                },
                priority: priority
        )
    }

    @discardableResult
    func heightLessThanOrEqualToWidth(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .heightLessThanOrEqualTo,
                buildConstraint: {
                    self.owner.heightAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, multiplier: multiplier, constant: constant)
                },
                priority: priority
        )
    }
}
