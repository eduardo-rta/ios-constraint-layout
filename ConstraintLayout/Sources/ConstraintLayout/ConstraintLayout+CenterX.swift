//
// Created by Eduardo Appolinario on 2021-10-23.
//

import Foundation
import UIKit

public extension ConstraintLayout {
    
    @discardableResult
    func centerXTo(_ anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .centerXEqualTo,
                buildConstraint: {
                    self.owner.centerXAnchor.constraint(equalTo: anchor, constant: constant)
                },
                priority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToCenterXOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXTo(view.centerXAnchor, constant: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerXToCenterXOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToCenterXOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToCenterXOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXTo(
            layoutGuide.centerXAnchor,
            constant: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func centerXToCenterXOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToCenterXOf(
            layoutGuide,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToCenterXOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToCenterXOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerXToCenterXOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToCenterXOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToCenterXOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerXToCenterXOf(superview, withMargin: margin)
        }
        return self
    }
    
    @discardableResult
    func centerXToCenterXOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToCenterXOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToCenterXOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerXToCenterXOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }
    
    @discardableResult
    func centerXToCenterXOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToCenterXOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToLeftOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXTo(view.leftAnchor, constant: margin, withPriority: priority)
    }

    @discardableResult
    func centerXToLeftOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToLeftOf(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToLeftOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXTo(layoutGuide.leftAnchor, constant: margin, withPriority: priority)
    }

    @discardableResult
    func centerXToLeftOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToLeftOf(
                layoutGuide,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToLeftOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToLeftOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func centerXToLeftOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToLeftOfSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToLeftOfParent(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerXToLeftOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func centerXToLeftOfParent(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToLeftOfParent(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToLeftOfParentSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerXToLeftOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func centerXToLeftOfParentSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToLeftOfParentSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToRightOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXTo(view.rightAnchor, constant: margin * -1, withPriority: priority)
    }

    @discardableResult
    func centerXToRightOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToRightOf(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToRightOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXTo(layoutGuide.rightAnchor, constant: margin * -1, withPriority: priority)
    }

    @discardableResult
    func centerXToRightOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToRightOf(
                layoutGuide,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToRightOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToRightOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }

    @discardableResult
    func centerXToRightOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToRightOfSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToRightOfParent(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerXToRightOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func centerXToRightOfParent(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToRightOfParent(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func centerXToRightOfParentSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.centerXToRightOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func centerXToRightOfParentSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToRightOfParentSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/
}
