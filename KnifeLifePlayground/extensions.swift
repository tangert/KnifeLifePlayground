//
//  extensions.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/21/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    func vibrate(){
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = 0.6
        animation.values = [-2.5, 2.5, -1.25, 1.25, -0.67, 0.67, -0.33, 0.33, 0.0 ]
        layer.add(animation, forKey: "shake")
    }
}
