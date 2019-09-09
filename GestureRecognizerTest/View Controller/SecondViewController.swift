//
//  SecondViewController.swift
//  GestureRecognizerTest
//
//  Created by Keenan Cookson on 2019/09/09.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, BackSwipeDelegate {
    func handleBackSwipeGesture() {
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupBackSwipeGesture()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
