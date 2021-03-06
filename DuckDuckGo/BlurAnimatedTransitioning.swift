//
//  BlurAnimatedTransitioning.swift
//  DuckDuckGo
//
//  Created by Mia Alexiou on 19/04/2017.
//  Copyright © 2017 DuckDuckGo. All rights reserved.
//

import UIKit
import Core

class BlurAnimatedTransitioning: NSObject, UIViewControllerAnimatedTransitioning {
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        containerView.blur(style: .dark)
        
        let toView = transitionContext.view(forKey: .to)!
        toView.backgroundColor = UIColor.clear
        toView.alpha = 0
        containerView.addSubview(toView)
        
        UIView.animate(withDuration: 0.5, animations: {
            toView.alpha = 1
        }, completion: { (value: Bool) in
            transitionContext.completeTransition(true)
        })
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
}
