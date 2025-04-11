//
//  ViewController.swift
//  SOPT_week1
//
//  Created by 이상엽 on 4/5/25.
//

import UIKit

class ViewController: UIViewController {

    private var testView: UIView = UIView(frame: .init(origin: .init(x: 20, y: 170),
                                                       size: .init(width: 150, height: 150)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        testView.backgroundColor = .magenta
        
        self.view.addSubview(testView)
    }
}


