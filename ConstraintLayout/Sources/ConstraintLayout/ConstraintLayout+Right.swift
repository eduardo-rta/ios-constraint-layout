//
// Created by Eduardo Appolinario on 2021-10-23.
//

import Foundation
import UIKit

public extension ConstraintLayout {
    
    @discardableResult
    func rightTo(_ anchor: NSLayoutXAxisAnchor, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.configureConstraint(
                key: .rightEqualTo,
                buildConstraint: {
                    self.owner.rightAnchor.constraint(equalTo: anchor, constant: margin)
                },
                priority: priority
        )
    }

    @discardableResult
    func rightTo(_ anchor: NSLayoutXAxisAnchor, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightTo(
                anchor,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func rightToRightOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightTo(view.rightAnchor, withMargin: margin * -1)
    }

    @discardableResult
    func rightToRightOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToRightOf(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func rightToRightOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightTo(layoutGuide.rightAnchor, withMargin: margin * -1)
    }

    @discardableResult
    func rightToRightOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToRightOf(
                layoutGuide,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func rightToRightOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToRightOf(view.safeAreaLayoutGuide, withMargin: margin)
    }

    @discardableResult
    func rightToRightOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.rightToRightOfSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func rightToRightOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.rightToRightOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func rightToRightOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.rightToRightOfParent(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func rightToRightOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.rightToRightOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }

    @discardableResult
    func rightToRightOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToRightOfParentSafeArea(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func rightToLeftOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightTo(view.leftAnchor, withMargin: margin * -1)
    }

    @discardableResult
    func rightToLeftOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToLeftOf(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func rightToLeftOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightTo(layoutGuide.leftAnchor, withMargin: margin * -1)
    }

    @discardableResult
    func rightToLeftOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToLeftOf(
                layoutGuide,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func rightToLeftOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToLeftOf(view.safeAreaLayoutGuide, withMargin: margin)
    }

    @discardableResult
    func rightToLeftOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToLeftOfSafeArea(
                view,
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func rightToLeftOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.rightToLeftOf(superview, withMargin: margin)
        }
        return self
    }

    @discardableResult
    func rightToLeftOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToLeftOfParent(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/

    @discardableResult
    func rightToLeftOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = owner.superview {
            return self.rightToLeftOfSafeArea(superview, withMargin: margin)
        }
        return self
    }

    @discardableResult
    func rightToLeftOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToLeftOfParentSafeArea(
                withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
                withPriority: priority
        )
    }

/*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func rightToCenterXOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightTo(
            layoutGuide.centerXAnchor,
            withMargin: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func rightToCenterXOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToCenterXOf(
            layoutGuide,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
        
/*********************************************************************************************************************************************************************************/
        
    @discardableResult
    func rightToCenterXOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightTo(
            view.centerXAnchor,
            withMargin: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func rightToCenterXOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToCenterXOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
        
/*********************************************************************************************************************************************************************************/
        
    @discardableResult
    func rightToCenterXOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        guard let superview = owner.superview else {
            return self
        }
        return self.rightToCenterXOf(
            superview,
            withMargin: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func rightToCenterXOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToCenterXOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
        
/*********************************************************************************************************************************************************************************/
        
    @discardableResult
    func rightToCenterXOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        guard let superview = owner.superview else {
            return self
        }
        return self.rightToCenterXOf(
            superview.safeAreaLayoutGuide,
            withMargin: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func rightToCenterXOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.rightToCenterXOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
        
/*********************************************************************************************************************************************************************************/
}

