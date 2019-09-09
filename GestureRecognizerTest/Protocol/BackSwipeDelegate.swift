//
//  BackSwipeDelegate.swift
//  GestureRecognizerTest
//
//  Created by Keenan Cookson on 2019/09/09.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import UIKit

protocol BackSwipeDelegate: class {
    /// Creates a gesture variable of type UIScreenEdgePanGestureRecognizer, specifies the edge the gesture should start at, and adds the gesture to the view.
    func setupBackSwipeGesture()
    /// Handles the actions that should take place when the gesture is recognized.
    func handleBackSwipeGesture()
}

fileprivate extension UIViewController {
    /// Method that is called when the screen-swipe gesture is recognized.
    ///
    /// This method creates a constant that acts as a UIViewController that has adopted the DownSwipeDelegate
    ///
    /// - Parameter recognizer: UIScreenEdgePanGestureRecognizer
    @objc func screenEdgeSwiped(_ recognizer: UIScreenEdgePanGestureRecognizer) {
        guard let downSwipeDelegateSelf = self as? BackSwipeDelegate else {
            return
        }
        if recognizer.state == .began {
            downSwipeDelegateSelf.handleBackSwipeGesture()
        }
    }
}

extension BackSwipeDelegate where Self : UIViewController {
    func setupBackSwipeGesture() {
        let edgePan = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(Self.screenEdgeSwiped))
        edgePan.edges = .left
        
        self.view.addGestureRecognizer(edgePan)
    }
}
