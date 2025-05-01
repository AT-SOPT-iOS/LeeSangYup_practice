//
//  WelcomViewController_Delegate.swift
//  SOPT_week2
//
//  Created by 이상엽 on 4/12/25.
//

import Foundation
import UIKit

protocol DataBindDelegate: AnyObject {
    func dataBind(id: String)
}

final class WelcomViewController_Delegate: UIViewController {
    weak var delegate: DataBindDelegate?
    var id: String?
    private func bindID() {
        self.welcomeLabel.text = "\(id ?? "???")님 \n반가워요!"
    }
    
    func setLabelText(id: String?) {
        self.id = id
    }
    
    let carrotImage: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 112, y: 87, width: 150, height: 150))
        image.image = UIImage(named: "carrot")
        image.contentMode = .scaleAspectFit
        return image
    }()
    let welcomeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 140, y : 295, width: 95, height: 60))
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont(name: "Pretendard-ExtraBold", size: 25)
        return label
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 426, width: 335, height: 57))
        button.backgroundColor = UIColor(named: "orange_carrot")
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.layer.cornerRadius = 6
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.1
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowRadius = 6
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    lazy var reLoginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 498, width: 335, height: 57))
        button.backgroundColor = UIColor(named: "gray200")
        button.setTitle("다시 로그인", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.layer.cornerRadius = 6
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.1
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowRadius = 6
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    
    
    @objc
    func backToLoginButtonDidTap() {
        if let id = id {
            delegate?.dataBind(id: id)
        }
        
        if self.navigationController == nil {
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.view.addSubview(carrotImage)
        self.view.addSubview(welcomeLabel)
        self.view.addSubview(backButton)
        self.view.addSubview(reLoginButton)
        bindID()
        
    }
}

