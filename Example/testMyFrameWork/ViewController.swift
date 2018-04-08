//
//  ViewController.swift
//  testMyFrameWork
//
//  Created by 管 皓 on 2018/4/6.
//  Copyright © 2018年 Hao Guan. All rights reserved.
//

import UIKit
import GestureViewController

let kScreenWith = UIScreen.main.bounds.width
let kScreenHeight = UIScreen.main.bounds.height

class ViewController: GestureViewController {
    
    var topHiddenView: UIView?
    var bottomHiddenView: UIView?
    var leftHiddenView: UIView?
    var rightHiddenView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        gestureView.backgroundColor = .white
        gestureView.delegate = self
        
        gestureView.enableUpSwipeGesture(true)
        gestureView.enableDownSwipeGesture(true)
        gestureView.enableLeftSwipeGesture(true)
        gestureView.enableRightSwipeGesture(true)
        
        topHiddenView = UIView(frame: CGRect(x: 0, y: -200, width: kScreenWith, height: 200))
        topHiddenView!.backgroundColor = .blue
        enableTopHiddenView(topHiddenView: topHiddenView!)
        
        bottomHiddenView = UIView(frame: CGRect(x: 0, y: kScreenHeight, width: kScreenWith, height: 200))
        bottomHiddenView!.backgroundColor = .red
        enableBottomhHiddenView(bottomHiddenView: bottomHiddenView!)
        
        leftHiddenView = UIView(frame: CGRect(x: -200, y: 0, width: 200, height: kScreenHeight))
        leftHiddenView!.backgroundColor = .green
        enableLeftHiddenView(leftHiddenView: leftHiddenView!)
        
        rightHiddenView = UIView(frame: CGRect(x: kScreenWith, y: 0, width: 200, height: kScreenHeight))
        rightHiddenView!.backgroundColor = .brown
        enableRightHiddenView(rightHiddenView: rightHiddenView!)
    }
    
    override func topHiddenViewShowsUpBySwipe() {
        super.topHiddenViewShowsUpBySwipe()
        hiddenViewWillShow(hiddenView: topHiddenView!)
        UIView.animate(withDuration: 0.3) {
            self.topHiddenView!.frame.origin.y += 200
        }
    }
    
    override func topHiddenViewHidesBySwipe() {
        super.topHiddenViewHidesBySwipe()
        UIView.animate(withDuration: 0.3, animations: {
            self.topHiddenView!.frame.origin.y -= 200
        }) { (_) in
            self.hiddenViewDidHide(hiddenView: self.topHiddenView!)
        }
    }
    
    override func bottomHiddenViewShowsUpBySwipe() {
        super.bottomHiddenViewShowsUpBySwipe()
        hiddenViewWillShow(hiddenView: bottomHiddenView!)
        UIView.animate(withDuration: 0.3) {
            self.bottomHiddenView!.frame.origin.y -= 200
        }
    }
    
    override func bottomHiddenViewHidesBySwipe() {
        super.bottomHiddenViewHidesBySwipe()
        UIView.animate(withDuration: 0.3, animations: {
            self.bottomHiddenView!.frame.origin.y += 200
        }) { (_) in
            self.hiddenViewDidHide(hiddenView: self.bottomHiddenView!)
        }
    }
    
    override func leftHiddenViewShowsUpBySwipe() {
        super.leftHiddenViewShowsUpBySwipe()
        hiddenViewWillShow(hiddenView: leftHiddenView!)
        UIView.animate(withDuration: 0.3) {
            self.leftHiddenView!.frame.origin.x += 200
        }
    }
    
    override func leftHiddenViewHidesBySwipe() {
        super.leftHiddenViewHidesBySwipe()
        UIView.animate(withDuration: 0.3, animations: {
            self.leftHiddenView!.frame.origin.x -= 200
        }) { (_) in
            self.hiddenViewDidHide(hiddenView: self.leftHiddenView!)
        }
    }
    
    override func rightHiddenViewShowsUpBySwipe() {
        super.rightHiddenViewShowsUpBySwipe()
        hiddenViewWillShow(hiddenView: rightHiddenView!)
        UIView.animate(withDuration: 0.3) {
            self.rightHiddenView!.frame.origin.x -= 200
        }
    }
    
    override func rightHiddenViewHidesBySwipe() {
        super.rightHiddenViewHidesBySwipe()
        UIView.animate(withDuration: 0.3, animations: {
            self.rightHiddenView!.frame.origin.x += 200
        }) { (_) in
            self.hiddenViewDidHide(hiddenView: self.rightHiddenView!)
        }
    }
}

