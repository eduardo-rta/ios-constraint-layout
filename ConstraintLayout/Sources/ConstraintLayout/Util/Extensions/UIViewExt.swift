//
//  File.swift
//  
//
//  Created by Eduardo Appolinario on 2022-07-19.
//

import Foundation
import UIKit

public extension UIView {
    private struct AssociatedObjectKeys {
        static var constraintLayoutKey = "view_constraint_layout_key"
    }

    var constraintLayout: ConstraintLayout {
        get {
            if let instance = objc_getAssociatedObject(self, &AssociatedObjectKeys.constraintLayoutKey) as? ConstraintLayout {
                return instance
            } else {
                let instance = ConstraintLayout(self)
                objc_setAssociatedObject(self, &AssociatedObjectKeys.constraintLayoutKey, instance, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
                return instance
            }
        }
    }
}

