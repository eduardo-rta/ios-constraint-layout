//
// Created by Eduardo Appolinario on 2021-10-23.
//

import Foundation
import UIKit

public extension ConstraintLayout {

    @discardableResult
    func topTo(_ anchor: NSLayoutYAxisAnchor, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .topEqualTo,
                buildConstraint: {
                    self.owner.topAnchor.constraint(equalTo: anchor, constant: margin)
                },
                priority: priority
        )
    }

    @discardableResult
    func topTo(_ anchor: NSLayoutYAxisAnchor, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topTo(
                anchor,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToTopOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return topTo(view.topAnchor, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func topToTopOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToTopOf(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToTopOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return topTo(layoutGuide.topAnchor, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func topToTopOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToTopOf(
                layoutGuide,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToTopOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return topTo(view.safeAreaLayoutGuide.topAnchor, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func topToTopOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToTopOfSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToTopOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.topToTopOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func topToTopOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToTopOfParent(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToTopOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.topToTopOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func topToTopOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToTopOfParentSafeArea(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToBottomOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topTo(view.bottomAnchor, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func topToBottomOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToBottomOf(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToBottomOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topTo(layoutGuide.bottomAnchor, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func topToBottomOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToBottomOf(
                layoutGuide,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToBottomOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topTo(view.safeAreaLayoutGuide.bottomAnchor, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func topToBottomOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToBottomOfSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToBottomOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.topToBottomOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func topToBottomOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToBottomOfParent(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToBottomOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.topToBottomOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func topToBottomOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToBottomOfParentSafeArea(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func topToCenterYOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.topTo(
            view.centerYAnchor,
            withMargin: margin,
            withPriority: priority
        )
        return self
    }
    
    @discardableResult
    func topToCenterYOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.topToCenterYOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
        return self
    }
    
    /*********************************************************************************************************************************************************************************/
    
    
    @discardableResult
    func topToCenterYOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.topTo(
            view.safeAreaLayoutGuide.centerYAnchor,
            withMargin: margin,
            withPriority: priority
        )
        return self
    }
    
    @discardableResult
    func topToCenterYOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.topToCenterYOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
        return self
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func topToCenterYOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        guard let superview = self.owner.superview else {
            return self
        }
        return self.topToCenterYOf(
            superview,
            withMargin: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func topToCenterYOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToCenterYOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/

    @discardableResult
    func topToCenterYOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        guard let superview = self.owner.superview else {
            return self
        }
        return self.topToCenterYOfSafeArea(
            superview,
            withMargin: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func topToCenterYOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToCenterYOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
}

