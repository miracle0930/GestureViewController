//
//  GestureViewControllerDelegate.swift
//  GestureViewController
//
//  Created by 管 皓 on 2018/4/6.
//  Copyright © 2018年 Hao Guan. All rights reserved.
//

import Foundation

@objc public protocol GestureViewControllerDelegate: class {
    
    @objc func topHiddenViewShowsUpBySwipe()
    
    @objc func bottomHiddenViewShowsUpBySwipe()
    
    @objc func leftHiddenViewShowsUpBySwipe()
    
    @objc func rightHiddenViewShowsUpBySwipe()
    
    @objc func topHiddenViewHidesBySwipe()
    
    @objc func bottomHiddenViewHidesBySwipe()
    
    @objc func leftHiddenViewHidesBySwipe()
    
    @objc func rightHiddenViewHidesBySwipe()
        
}
