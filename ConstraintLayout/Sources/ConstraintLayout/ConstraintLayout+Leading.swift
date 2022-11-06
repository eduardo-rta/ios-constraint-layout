//
// Created by Eduardo Appolinario on 2021-10-23.
//

import Foundation
import UIKit

public extension ConstraintLayout {

    @discardableResult
    func leadingTo(_ anchor: NSLayoutXAxisAnchor, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .leadingEqualTo,
                buildConstraint: {
                    self.owner.leadingAnchor.constraint(equalTo: anchor, constant: margin)
                },
                priority: priority
        )
    }

    @discardableResult
    func leadingTo(_ anchor: NSLayoutXAxisAnchor, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingTo(
                anchor,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func leadingToLeadingOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingTo(view.leadingAnchor, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func leadingToLeadingOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingToLeadingOf(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func leadingToLeadingOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingTo(layoutGuide.leadingAnchor, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func leadingToLeadingOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingToLeadingOf(
                layoutGuide,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func leadingToLeadingOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingToLeadingOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func leadingToLeadingOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingToLeadingOfSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func leadingToLeadingOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.leadingToLeadingOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func leadingToLeadingOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingToLeadingOfParent(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func leadingToLeadingOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.leadingToLeadingOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func leadingToLeadingOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingToLeadingOfParentSafeArea(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func leadingToTrailingOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return leadingTo(view.trailingAnchor, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func leadingToTrailingOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return leadingToTrailingOf(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func leadingToTrailingOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return leadingTo(layoutGuide.trailingAnchor, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func leadingToTrailingOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return leadingToTrailingOf(
                layoutGuide,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func leadingToTrailingOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingToTrailingOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func leadingToTrailingOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingToTrailingOfSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func leadingToTrailingOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.leadingToTrailingOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func leadingToTrailingOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingToTrailingOfParent(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func leadingToTrailingOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.leadingToTrailingOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func leadingToTrailingOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leadingToTrailingOfParentSafeArea(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/
}
