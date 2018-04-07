//
//  GestureViewControllerDelegate.swift
//  GestureViewController
//
//  Created by 管 皓 on 2018/4/6.
//  Copyright © 2018年 Hao Guan. All rights reserved.
//

import Foundation

@objc public protocol GestureViewControllerDelegate: class {
    
    @objc func topHiddenViewShowsUp()
    
    @objc func bottomHiddenViewShowsUp()
    
    @objc func leftHiddenViewShowsUp()
    
    @objc func rightHiddenViewShowsUp()
    
    @objc func topHiddenViewHides()
    
    @objc func bottomHiddenViewHides()
    
    @objc func leftHiddenViewHides()
    
    @objc func rightHiddenViewHides()
    
}
