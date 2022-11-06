//
//  ConstraintLayoutExt.swift
//  
//
//  Created by Eduardo Appolinario on 2022-08-03.
//

import Foundation
import UIKit

public extension ConstraintLayout {
    @discardableResult
    func matchParent(withMargin margin: CGFloat = 0) -> ConstraintLayout {
        return self
            .topToTopOfParent(withMargin: margin)
            .bottomToBottomOfParent(withMargin: margin)
            .leftToLeftOfParent(withMargin: margin)
            .rightToRightOfParent(withMargin: margin)
    }
    
    @discardableResult
    func matchParent(withMargin margin: Margin) -> ConstraintLayout {
        let marginSize = ConstraintLayout.marginProvider.getMarginSize(margin)
        return self.matchParent(withMargin: marginSize)
    }
    
    @discardableResult
    func match(_ view: UIView, withMargin margin: CGFloat = 0) -> ConstraintLayout {
        return self
            .topToTopOf(view, withMargin: margin)
            .bottomToBottomOf(view, withMargin: margin)
            .leftToLeftOf(view, withMargin: margin)
            .rightToRightOf(view, withMargin: margin)
    }
}
