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
    
    var topHiddenView: UIView? {
        didSet {
            self.gestureView.upSwipeGestureEnabled = true
            self.gestureView.downSwipeGestureEnabled = true
        }
    }
    
    var bottomHiddenView: UIView? {
        didSet {
            self.gestureView.upSwipeGestureEnabled = true
            self.gestureView.downSwipeGestureEnabled = true
        }
    }
    
    var leftHiddenView: UIView? {
        didSet {
            self.gestureView.leftSwipeGestureEnabled = true
            self.gestureView.rightSwipeGestureEnabled = true
        }
    }
    
    var rightHiddenView: UIView? {
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
    open func enableTopHiddenView(topHiddenView: UIView) {
        self.topHiddenView = topHiddenView
        view.addSubview(topHiddenView)
    }
    
    
    open func enableBottomhHiddenView(bottomHiddenView: UIView) {
        self.bottomHiddenView = bottomHiddenView
        view.addSubview(bottomHiddenView)
    }
    
    open func enableLeftHiddenView(leftHiddenView: UIView) {
        self.leftHiddenView = leftHiddenView
        view.addSubview(leftHiddenView)
    }
    
    open func enableRightHiddenView(rightHiddenView: UIView) {
        self.rightHiddenView = rightHiddenView
        view.addSubview(rightHiddenView)
    }
    
    
    /*
        Business logic when hidden views show up or hide.
        Remember to call `super` at the beginning when overriding these methods.
    */
    open func topHiddenViewShowsUpBySwipe() {
        guard let _ = topHiddenView else { return }
        gestureView.topHiddenViewIsDisplaying = true
    }
    
    open func topHiddenViewHidesBySwipe() {
        guard let _ = topHiddenView else { return }
        gestureView.topHiddenViewIsDisplaying = false
    }
    
    open func bottomHiddenViewShowsUpBySwipe() {
        guard let _ = bottomHiddenView else { return }
        gestureView.bottomHiddenViewIsDisplaying = true
    }
    
    open func bottomHiddenViewHidesBySwipe() {
        guard let _ = bottomHiddenView else { return }
        gestureView.bottomHiddenViewIsDisplaying = false
    }
    
    open func leftHiddenViewShowsUpBySwipe() {
        guard let _ = leftHiddenView else { return }
        gestureView.leftHiddenViewIsDisplaying = true
    }
    
    open func leftHiddenViewHidesBySwipe() {
        guard let _ = leftHiddenView else { return }
        gestureView.leftHiddenViewIsDisplaying = false
    }
    
    open func rightHiddenViewShowsUpBySwipe() {
        guard let _ = rightHiddenView else { return }
        gestureView.rightHiddenViewIsDisplaying = true
    }
    
    open func rightHiddenViewHidesBySwipe() {
        guard let _ = rightHiddenView else { return }
        gestureView.rightHiddenViewIsDisplaying = false
    }
    
    open func hiddenViewDidHide(hiddenView: UIView) {
        hiddenView.layer.shadowOffset = CGSize(width: 0, height: 0)
        hiddenView.layer.shadowColor = UIColor.clear.cgColor
        hiddenView.layer.shadowOpacity = 0.00;
        hiddenView.layer.shadowRadius = 0
    }
    
    open func hiddenViewWillShow(hiddenView: UIView, shadowOffset: CGSize = CGSize(width: 0, height: 0), shadowColor: CGColor = UIColor.gray.cgColor,
                                 shadowRadius: CGFloat = 100, shadowOpacity: Float = 0.8) {
        hiddenView.layer.shadowOffset = shadowOffset
        hiddenView.layer.shadowColor = shadowColor
        hiddenView.layer.shadowOpacity = shadowOpacity
        hiddenView.layer.shadowRadius = shadowRadius
    }
    
}

