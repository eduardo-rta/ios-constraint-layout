//
// Created by Eduardo Appolinario on 2021-10-23.
//

import Foundation
import UIKit

public extension ConstraintLayout {
    
    @discardableResult
    func centerYTo(_ anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .centerYEqualTo,
                buildConstraint: {
                    self.owner.centerYAnchor.constraint(equalTo: anchor, constant: constant)
                },
                priority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToCenterYOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYTo(
            view.centerYAnchor,
            constant: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func centerYToCenterYOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToCenterYOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToCenterYOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYTo(layoutGuide.centerYAnchor, constant: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerYToCenterYOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToCenterYOf(
            layoutGuide,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToCenterYOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToCenterYOf(
            view.safeAreaLayoutGuide,
            withMargin: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func centerYToCenterYOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToCenterYOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToCenterYOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerYToCenterYOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }
    
    @discardableResult
    func centerYToCenterYOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToCenterYOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToCenterYOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerYToCenterYOfSafeArea(
                superview,
                withMargin: margin,
                withPriority: priority)
        }
        return self
    }
    
    @discardableResult
    func centerYToCenterYOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToCenterYOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToTopOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYTo(view.topAnchor, constant: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerYToTopOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToTopOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToTopOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYTo(layoutGuide.topAnchor, constant: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerYToTopOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToTopOf(
            layoutGuide,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToTopOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToTopOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerYToTopOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToTopOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToTopOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerYToTopOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }
    
    @discardableResult
    func centerYToTopOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToTopOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToTopOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerYToTopOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }
    
    @discardableResult
    func centerYToTopOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToTopOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToBottomOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYTo(view.bottomAnchor, constant: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerYToBottomOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToBottomOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToBottomOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYTo(layoutGuide.bottomAnchor, constant: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerYToBottomOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToBottomOf(
            layoutGuide,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToBottomOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToBottomOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerYToBottomOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToBottomOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToBottomOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerYToBottomOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }
    
    @discardableResult
    func centerYToBottomOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToBottomOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerYToBottomOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerYToBottomOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }
    
    @discardableResult
    func centerYToBottomOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerYToBottomOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/
}
