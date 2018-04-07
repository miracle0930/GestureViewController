//
//  GestureViewController.swift
//  GestureViewController
//
//  Created by 管 皓 on 2018/4/6.
//  Copyright © 2018年 Hao Guan. All rights reserved.
//

import UIKit

let kScreenWith = UIScreen.main.bounds.width
let kScreenHeight = UIScreen.main.bounds.height

open class GestureViewController: UIViewController, GestureViewControllerDelegate {
    
    public var gestureView = GestureView(frame: CGRect(x: 0, y: 0, width: kScreenWith, height: kScreenHeight))
    
    public var topHiddenView: UIView? {
        didSet {
            self.gestureView.upSwipeGestureEnabled = true
            self.gestureView.downSwipeGestureEnabled = true
        }
    }
    
    public var bottomHiddenView: UIView? {
        didSet {
            self.gestureView.upSwipeGestureEnabled = true
            self.gestureView.downSwipeGestureEnabled = true
        }
    }
    
    public var leftHiddenView: UIView? {
        didSet {
            self.gestureView.leftSwipeGestureEnabled = true
            self.gestureView.rightSwipeGestureEnabled = true
        }
    }
    
    public var rightHiddenView: UIView? {
        didSet {
            self.gestureView.leftSwipeGestureEnabled = true
            self.gestureView.rightSwipeGestureEnabled = true
        }
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(gestureView)
    }
    
    
    // Enable hidden views based on your app's business logic.
    open func enableTopHiddenView() {
        topHiddenView = UIView(frame: CGRect(x: 0, y: 0, width: kScreenWith, height: 0))
        view.addSubview(topHiddenView!)
    }
    
    open func enableBottomhHiddenView() {
        bottomHiddenView = UIView(frame: CGRect(x: 0, y: kScreenHeight, width: kScreenWith, height: 0))
        view.addSubview(bottomHiddenView!)
    }
    
    open func enableLeftHiddenView() {
        leftHiddenView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: kScreenHeight))
        view.addSubview(leftHiddenView!)
    }
    
    open func enableRightHiddenView() {
        rightHiddenView = UIView(frame: CGRect(x: kScreenWith, y: 0, width: 0, height: kScreenHeight))
        view.addSubview(rightHiddenView!)
    }
    
    
    /*
        Business logic when hidden views show up or hide.
        Remember to call `super` at the beginning when overriding these methods.
    */
    open func topHiddenViewShowsUp() {
        guard let _ = topHiddenView else { return }
        gestureView.topHiddenViewIsDisplaying = true
    }
    
    open func topHiddenViewHides() {
        guard let _ = topHiddenView else { return }
        gestureView.topHiddenViewIsDisplaying = false

    }
    
    open func bottomHiddenViewShowsUp() {
        guard let _ = bottomHiddenView else { return }
        gestureView.bottomHiddenViewIsDisplaying = true
    }
    
    open func bottomHiddenViewHides() {
        guard let _ = bottomHiddenView else { return }
        gestureView.bottomHiddenViewIsDisplaying = false
    }
    
    open func leftHiddenViewShowsUp() {
        guard let _ = leftHiddenView else { return }
        gestureView.leftHiddenViewIsDisplaying = true
    }
    
    open func leftHiddenViewHides() {
        guard let _ = leftHiddenView else { return }
        gestureView.leftHiddenViewIsDisplaying = false
    }
    
    open func rightHiddenViewShowsUp() {
        guard let _ = rightHiddenView else { return }
        gestureView.rightHiddenViewIsDisplaying = true
    }
    
    open func rightHiddenViewHides() {
        guard let _ = rightHiddenView else { return }
        gestureView.rightHiddenViewIsDisplaying = false
    }
    
}

