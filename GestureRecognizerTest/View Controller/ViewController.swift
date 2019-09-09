//
//  ViewController.swift
//  GestureRecognizerTest
//
//  Created by Keenan Cookson on 2019/09/09.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func presentSecondViewController(_ sender: Any) {
//        self.navigationController?.pushViewController(SecondViewController(), animated: true)
        self.present(SecondViewController(), animated: true, completion: nil)
    }
    
}

