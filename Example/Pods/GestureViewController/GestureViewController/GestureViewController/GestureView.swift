//
//  GestureView.swift
//  GestureViewController
//
//  Created by 管 皓 on 2018/4/6.
//  Copyright © 2018年 Hao Guan. All rights reserved.
//

import Foundation
import UIKit

public class GestureView: UIView {
    
    public weak var delegate: GestureViewControllerDelegate?
    
    var upSwipeGestureEnabled = false
    var downSwipeGestureEnabled = false
    var leftSwipeGestureEnabled = false
    var rightSwipeGestureEnabled = false
    
    var topHiddenViewIsDisplaying = false
    var bottomHiddenViewIsDisplaying = false
    var leftHiddenViewIsDisplaying = false
    var rightHiddenViewIsDisplaying = false
    
    var upSwipeGesture: UISwipeGestureRecognizer!
    var downSwipeGesture: UISwipeGestureRecognizer!
    var leftSwipeGesture: UISwipeGestureRecognizer!
    var rightSwipeGesture: UISwipeGestureRecognizer!

    override init(frame: CGRect) {
        super.init(frame: frame)
        upSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestureDetected))
        downSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestureDetected))
        leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestureDetected))
        rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestureDetected))
        upSwipeGesture.direction = .up
        downSwipeGesture.direction = .down
        leftSwipeGesture.direction = .left
        rightSwipeGesture.direction = .right
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func enableUpSwipeGesture(_ bool: Bool) {
        if bool {
            self.addGestureRecognizer(upSwipeGesture)
        }
    }
    
    public func enableDownSwipeGesture(_ bool: Bool) {
        if bool {
            self.addGestureRecognizer(downSwipeGesture)
        }
    }
    
    public func enableLeftSwipeGesture(_ bool: Bool) {
        if bool {
            self.addGestureRecognizer(leftSwipeGesture)
        }
    }
    
    public func enableRightSwipeGesture(_ bool: Bool) {
        if bool {
            self.addGestureRecognizer(rightSwipeGesture)
        }
    }
    
    @objc final func swipeGestureDetected(gesture: UISwipeGestureRecognizer) {
        guard let delegate = self.delegate else {
            return
        }
        switch gesture.direction {
        case .up:
            upSwipeGestureHandler(delegate)
            break
        case .down:
            downSwipeGestureHandler(delegate)
        case .left:
            leftSwipeGestureHandler(delegate)
            break
        case .right:
            rightSwipeGestureHandler(delegate)
            break
        default:
            return
        }
    }
    
    final func upSwipeGestureHandler(_ delegate: GestureViewControllerDelegate) {
        if (!upSwipeGestureEnabled && !downSwipeGestureEnabled) || leftHiddenViewIsDisplaying || rightHiddenViewIsDisplaying {
            return
        }
        if topHiddenViewIsDisplaying {
            delegate.topHiddenViewHides()
        } else if !bottomHiddenViewIsDisplaying {
            delegate.bottomHiddenViewShowsUp()
        }
    }
    
    final func downSwipeGestureHandler(_ delegate: GestureViewControllerDelegate) {
        if (!upSwipeGestureEnabled && !downSwipeGestureEnabled) || leftHiddenViewIsDisplaying || rightHiddenViewIsDisplaying {
            return
        }
        if bottomHiddenViewIsDisplaying {
            delegate.bottomHiddenViewHides()
        } else if !topHiddenViewIsDisplaying {
            delegate.topHiddenViewShowsUp()
        }

    }
    
    final func leftSwipeGestureHandler(_ delegate: GestureViewControllerDelegate) {
        if (!leftSwipeGestureEnabled && !rightSwipeGestureEnabled) || topHiddenViewIsDisplaying || bottomHiddenViewIsDisplaying {
            return
        }
        if leftHiddenViewIsDisplaying {
            delegate.leftHiddenViewHides()
        } else if !rightHiddenViewIsDisplaying {
            delegate.rightHiddenViewShowsUp()
        }
    }
    
    final func rightSwipeGestureHandler(_ delegate: GestureViewControllerDelegate) {
        if (!leftSwipeGestureEnabled && !rightSwipeGestureEnabled) || topHiddenViewIsDisplaying || bottomHiddenViewIsDisplaying {
            return
        }
        if rightHiddenViewIsDisplaying {
            delegate.rightHiddenViewHides()
        } else if !leftHiddenViewIsDisplaying {
            delegate.leftHiddenViewShowsUp()
        }
    }
}
