//
//  Jitterable.swift
//  Protocol Oriented UI
//
//  Created by Nitesh Srivastva on 05/02/18.
//  Copyright © 2018 Nitesh Srivastva. All rights reserved.
//

import UIKit

protocol Jitterable{}
extension Jitterable where Self: UIView {
    func jitter() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint.init(x: self.center.x - 5.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint.init(x: self.center.x + 5.0, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
