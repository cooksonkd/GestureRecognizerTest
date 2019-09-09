//
//  DownSwipeDelegate.swift
//  GestureRecognizerTest
//
//  Created by Keenan Cookson on 2019/09/09.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import UIKit

protocol DownSwipeDelegate: class {
    func setupDownSwipeGesture()
    func handleDownSwipeGesture()
}

fileprivate extension UIViewController {
    @objc func screenEdgeSwiped(_ recognizer: UIScreenEdgePanGestureRecognizer) {
        guard let downSwipeDelegateSelf = self as? DownSwipeDelegate else {
            return
        }
        if recognizer.state == .began {
            downSwipeDelegateSelf.handleDownSwipeGesture()
        }
    }
}

extension DownSwipeDelegate where Self : UIViewController {
    func setupDownSwipeGesture() {
        let edgePan = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(Self.screenEdgeSwiped))
        edgePan.edges = .left
        
        self.view.addGestureRecognizer(edgePan)
    }
}
