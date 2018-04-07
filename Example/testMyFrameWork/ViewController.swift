//
//  ViewController.swift
//  testMyFrameWork
//
//  Created by 管 皓 on 2018/4/6.
//  Copyright © 2018年 Hao Guan. All rights reserved.
//

import UIKit
import GestureViewController


class ViewController: GestureViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        gestureView.backgroundColor = .clear
        gestureView.delegate = self
        gestureView.enableUpSwipeGesture(true)
        gestureView.enableDownSwipeGesture(true)
        gestureView.enableLeftSwipeGesture(true)
        gestureView.enableRightSwipeGesture(true)
        enableTopHiddenView()
        enableBottomhHiddenView()
        enableLeftHiddenView()
        enableRightHiddenView()
        topHiddenView!.backgroundColor = .blue
        bottomHiddenView!.backgroundColor = .red
        leftHiddenView!.backgroundColor = .green
        rightHiddenView!.backgroundColor = .brown
    }
    
    override func topHiddenViewShowsUp() {
        super.topHiddenViewShowsUp()
        UIView.animate(withDuration: 0.3) {
            self.topHiddenView!.frame.size.height = 200
            self.gestureView.frame.size.height -= 200
            self.gestureView.frame.origin.y += 200
            self.gestureView.backgroundColor?.withAlphaComponent(0.5)
        }
    }
    
    override func topHiddenViewHides() {
        super.topHiddenViewHides()
        UIView.animate(withDuration: 0.3) {
            self.topHiddenView!.frame.size.height = 0
            self.gestureView.frame.size.height += 200
            self.gestureView.frame.origin.y -= 200
        }
    }
    
    override func bottomHiddenViewShowsUp() {
        super.bottomHiddenViewShowsUp()
        UIView.animate(withDuration: 0.3) {
            self.bottomHiddenView!.frame.size.height = 200
            self.bottomHiddenView!.frame.origin.y -= 200
            self.gestureView.frame.size.height -= 200
        }
    }
    
    override func bottomHiddenViewHides() {
        super.bottomHiddenViewHides()
        UIView.animate(withDuration: 0.3) {
            self.bottomHiddenView!.frame.size.height = 0
            self.bottomHiddenView!.frame.origin.y += 200
            self.gestureView.frame.size.height += 200
        }
    }
    
    override func leftHiddenViewShowsUp() {
        super.leftHiddenViewShowsUp()
        UIView.animate(withDuration: 0.3) {
            self.leftHiddenView!.frame.size.width = 200
            self.gestureView.frame.size.width -= 200
            self.gestureView.frame.origin.x += 200
        }
    }
    
    override func leftHiddenViewHides() {
        super.leftHiddenViewHides()
        UIView.animate(withDuration: 0.3) {
            self.leftHiddenView!.frame.size.width = 0
            self.gestureView.frame.size.width += 200
            self.gestureView.frame.origin.x -= 200
        }
    }
    
    override func rightHiddenViewShowsUp() {
        super.rightHiddenViewShowsUp()
        UIView.animate(withDuration: 0.3) {
            self.rightHiddenView!.frame.size.width = 200
            self.rightHiddenView!.frame.origin.x -= 200
            self.gestureView.frame.size.width -= 200
        }
    }
    
    override func rightHiddenViewHides() {
        super.rightHiddenViewHides()
        UIView.animate(withDuration: 0.3) {
            self.rightHiddenView!.frame.size.width = 0
            self.rightHiddenView!.frame.origin.x += 200
            self.gestureView.frame.size.width += 200
        }
    }



}

