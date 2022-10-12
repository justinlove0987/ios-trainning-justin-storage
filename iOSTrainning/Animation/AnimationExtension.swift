//
//  AnimationExtension.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/12.
//

import UIKit

extension UIView {
    func startRotateAnimation(_ start: Bool, duration: TimeInterval = 0.3) {
        if start {
            if layer.animation(forKey: "rotation") == nil {
                let animation = CABasicAnimation(keyPath: "transform.rotation.z")
                animation.duration = duration
                animation.repeatCount = .infinity
                animation.fromValue = 0
                animation.toValue = 2.0 * Float.pi

                layer.add(animation, forKey: "rotation")
            }
        } else {
            layer.removeAnimation(forKey: "rotation")
        }
    }
}
