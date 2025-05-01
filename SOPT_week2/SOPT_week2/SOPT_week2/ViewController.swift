//
//  ViewController.swift
//  SOPT_week2
//
//  Created by 이상엽 on 4/12/25.
//

import UIKit

class ViewController: UIViewController {
    
    var yellowBox: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    var greenBox: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    var blackBox: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    var blueBox: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setLayout()

    }
    
    
    private func setLayout() {
        let height = UIScreen.main.bounds.height / 4
        let width = UIScreen.main.bounds.width / 2
        
        [yellowBox, greenBox, blackBox, blueBox].forEach{
            self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }

        NSLayoutConstraint.activate([yellowBox.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
                                     yellowBox.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
                                     yellowBox.heightAnchor.constraint(equalToConstant: height),
                                     yellowBox.widthAnchor.constraint(equalToConstant: width)
                                    ])
        NSLayoutConstraint.activate([greenBox.topAnchor.constraint(equalTo: self.yellowBox.bottomAnchor, constant: 0),
                                     greenBox.leadingAnchor.constraint(equalTo: self.yellowBox.trailingAnchor, constant: 0),
                                     greenBox.heightAnchor.constraint(equalToConstant: height),
                                     greenBox.widthAnchor.constraint(equalToConstant: width)
                                    ])
        NSLayoutConstraint.activate([blackBox.topAnchor.constraint(equalTo: self.yellowBox.bottomAnchor, constant: height),
                                     blackBox.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
                                     blackBox.heightAnchor.constraint(equalToConstant: height),
                                     blackBox.widthAnchor.constraint(equalToConstant: width)
                                    ])
        NSLayoutConstraint.activate([blueBox.topAnchor.constraint(equalTo: self.blackBox.bottomAnchor, constant: 0),
                                     blueBox.leadingAnchor.constraint(equalTo: self.blackBox.trailingAnchor, constant: 0),
                                     blueBox.heightAnchor.constraint(equalToConstant: height),
                                     blueBox.widthAnchor.constraint(equalToConstant: width)
                                    ])
    }
    
    
}



