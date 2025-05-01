//
//  ScrollViewController.swift
//  SOPT_week2
//
//  Created by 이상엽 on 4/12/25.
//

import UIKit

final class ScrollViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    private let orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    private let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    private let purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    private let blueView: UIView = {
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
        let width = UIScreen.main.bounds.width / 2
        let height = UIScreen.main.bounds.height / 2

        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        contentView.addSubview(redView)
        contentView.addSubview(orangeView)
        contentView.addSubview(yellowView)
        contentView.addSubview(purpleView)
        contentView.addSubview(greenView)
        contentView.addSubview(blueView)
        
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
    
            contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor)
        ])
        
        
        let heightConstraint = contentView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.heightAnchor)
        heightConstraint.priority = .defaultLow
        heightConstraint.isActive = true
        
        
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            redView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            redView.heightAnchor.constraint(equalToConstant: height),
            redView.widthAnchor.constraint(equalToConstant: width)
        ])
        NSLayoutConstraint.activate([
            orangeView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            orangeView.leadingAnchor.constraint(equalTo: redView.trailingAnchor, constant: 0),
            orangeView.heightAnchor.constraint(equalToConstant: height),
            orangeView.widthAnchor.constraint(equalToConstant: width)
        ])
        NSLayoutConstraint.activate([
            yellowView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 0),
            yellowView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            yellowView.heightAnchor.constraint(equalToConstant: height),
            yellowView.widthAnchor.constraint(equalToConstant: width)
        ])
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: 0),
            greenView.leadingAnchor.constraint(equalTo: yellowView.trailingAnchor, constant: 0),
            greenView.heightAnchor.constraint(equalToConstant: height),
            greenView.widthAnchor.constraint(equalToConstant: width)
        ])
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: yellowView.bottomAnchor, constant: 0),
            blueView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            blueView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            blueView.heightAnchor.constraint(equalToConstant: height),
            blueView.widthAnchor.constraint(equalToConstant: width)
        ])
        NSLayoutConstraint.activate([
            purpleView.topAnchor.constraint(equalTo: greenView.bottomAnchor, constant: 0),
            purpleView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 0),
            purpleView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            purpleView.heightAnchor.constraint(equalToConstant: height),
            purpleView.widthAnchor.constraint(equalToConstant: width)
        ])
        
    }
    
}
