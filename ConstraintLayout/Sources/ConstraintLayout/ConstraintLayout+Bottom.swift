//
// Created by Eduardo Appolinario on 2021-10-23.
//

import Foundation
import UIKit

public extension ConstraintLayout {
    
    @discardableResult
    func bottomTo(_ anchor: NSLayoutYAxisAnchor, withMargin constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .bottomEqualTo,
                buildConstraint: {
                    self.owner.bottomAnchor.constraint(equalTo: anchor, constant: constant)
                },
                priority: priority
        )
    }

    @discardableResult
    func bottomTo(_ anchor: NSLayoutYAxisAnchor, withMargin margin: ConstraintLayout.Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomTo(
                anchor,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func bottomToBottomOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomTo(view.bottomAnchor, withMargin: margin * -1)
    }

    @discardableResult
    func bottomToBottomOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToBottomOf(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func bottomToBottomOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomTo(layoutGuide.bottomAnchor, withMargin: margin * -1)
    }

    @discardableResult
    func bottomToBottomOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToBottomOf(
                layoutGuide,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func bottomToBottomOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
            return self.bottomToBottomOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func bottomToBottomOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToBottomOfSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func bottomToBottomOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.bottomToBottomOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func bottomToBottomOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToBottomOfParent(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/


    @discardableResult
    func bottomToBottomOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.bottomToBottomOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func bottomToBottomOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToBottomOfParentSafeArea(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func bottomToTopOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomTo(view.topAnchor, withMargin: margin * -1, withPriority: priority)
    }

    @discardableResult
    func bottomToTopOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToTopOf(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func bottomToTopOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
            return self.bottomToTopOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func bottomToTopOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToTopOfSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func bottomToTopOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomTo(layoutGuide.topAnchor, withMargin: margin * -1, withPriority: priority)
    }

    @discardableResult
    func bottomToTopOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToTopOf(
                layoutGuide,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func bottomToTopOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.bottomToTopOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func bottomToTopOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToTopOfParent(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func bottomToTopOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.bottomToTopOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func bottomToTopOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToTopOfParentSafeArea(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/
    
    
    @discardableResult
    func bottomToCenterYOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.bottomTo(
            view.centerYAnchor,
            withMargin: margin,
            withPriority: priority
        )
        return self
    }
    
    @discardableResult
    func bottomToCenterYOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.bottomToCenterYOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
        return self
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func bottomToCenterYOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.bottomTo(
            view.safeAreaLayoutGuide.centerYAnchor,
            withMargin: margin,
            withPriority: priority
        )
        return self
    }
    
    @discardableResult
    func bottomToCenterYOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.bottomToCenterYOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
        return self
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func bottomToCenterYOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        guard let superview = self.owner.superview else {
            return self
        }
        return self.bottomToCenterYOf(
            superview,
            withMargin: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func bottomToCenterYOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToCenterYOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/

    @discardableResult
    func bottomToCenterYOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        guard let superview = self.owner.superview else {
            return self
        }
        return self.bottomToCenterYOfSafeArea(
            superview,
            withMargin: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func bottomToCenterYOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.bottomToCenterYOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
}
