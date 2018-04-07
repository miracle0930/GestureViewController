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

public class GestureViewController: UIViewController, GestureViewControllerDelegate {
    
    var gestureView = GestureView(frame: CGRect(x: 0, y: 0, width: kScreenWith, height: kScreenHeight))
    
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
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(gestureView)
    }
    
    public func enableTopHiddenView() {
        topHiddenView = UIView(frame: CGRect(x: 0, y: 0, width: kScreenWith, height: 0))
        view.addSubview(topHiddenView!)
    }
    
    public func enableBottomhHiddenView() {
        bottomHiddenView = UIView(frame: CGRect(x: 0, y: kScreenHeight, width: kScreenWith, height: 0))
        view.addSubview(bottomHiddenView!)
    }
    
    public func enableLeftHiddenView() {
        leftHiddenView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: kScreenHeight))
        view.addSubview(leftHiddenView!)
    }
    
    public func enableRightHiddenView() {
        rightHiddenView = UIView(frame: CGRect(x: kScreenWith, y: 0, width: 0, height: kScreenHeight))
        view.addSubview(rightHiddenView!)
    }
    
    public func topHiddenViewShowsUp() {
        guard let _ = topHiddenView else { return }
        gestureView.topHiddenViewIsDisplaying = true
    }
    
    public func topHiddenViewHides() {
        guard let _ = topHiddenView else { return }
        gestureView.topHiddenViewIsDisplaying = false

    }
    
    public func bottomHiddenViewShowsUp() {
        guard let _ = bottomHiddenView else { return }
        gestureView.bottomHiddenViewIsDisplaying = true
    }
    
    public func bottomHiddenViewHides() {
        guard let _ = bottomHiddenView else { return }
        gestureView.bottomHiddenViewIsDisplaying = false
    }
    
    public func leftHiddenViewShowsUp() {
        guard let _ = leftHiddenView else { return }
        gestureView.leftHiddenViewIsDisplaying = true
    }
    
    public func leftHiddenViewHides() {
        guard let _ = leftHiddenView else { return }
        gestureView.leftHiddenViewIsDisplaying = false
    }
    
    public func rightHiddenViewShowsUp() {
        guard let _ = rightHiddenView else { return }
        gestureView.rightHiddenViewIsDisplaying = true
    }
    
    public func rightHiddenViewHides() {
        guard let _ = rightHiddenView else { return }
        gestureView.rightHiddenViewIsDisplaying = false
    }
    
}

