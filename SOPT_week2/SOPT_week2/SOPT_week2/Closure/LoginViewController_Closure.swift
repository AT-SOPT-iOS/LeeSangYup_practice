//
//  LoginViewController_Closure.swift
//  SOPT_week2
//
//  Created by 이상엽 on 4/12/25.
//

import UIKit

class LoginViewController_Closure: UIViewController {
    let titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 69, y :161, width: 240, height: 44))
        label.text = "동네라서 가능한 모든것\n당근에서 가까운 이웃과 함께해요."
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont(name: "Pretendard-Bold", size: 18)
        label.lineBreakStrategy = .hangulWordPriority
        return label
    }()
    
    let idTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 276, width: 335, height: 52))
        textField.placeholder = "아이디"
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        textField.becomeFirstResponder()
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(named: "gray200")
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 335, width: 335, height: 52))
        textField.placeholder = "비밀번호"
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.backgroundColor = UIColor(named: "gray200")
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 21, y: 422, width: 332, height: 58))
        button.backgroundColor = UIColor(named: "orange_carrot")
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.1
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowRadius = 6
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 14)
        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    
    
    private func presentToWelcomVC() {
        let welcomeViewController = WelcomeViewController_Closure()
        welcomeViewController.modalPresentationStyle = .formSheet
//        welcomeViewController.id = idTextField.text
        welcomeViewController.setLabelText(id: idTextField.text)
        welcomeViewController.loginDataCompletion = { [weak self] data in
            print("클로저로 받아온 id가 뭐냐면요", data)
            guard let self else { return }
            self.idTextField.text = data
        }
        self.present(welcomeViewController, animated: true)
    }
    
    private func pushToWelcomVC() {
        let welcomeViewController = WelcomeViewController_Closure()
//        welcomeViewController.id = idTextField.text
        welcomeViewController.setLabelText(id: idTextField.text)
        welcomeViewController.loginDataCompletion = { [weak self] data in
            print("클로저로 받아온 id가 뭐냐면요", data)
            guard let self else { return }
            self.idTextField.text = data
        }
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
        
    }
    
    private func textFiedlShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @objc
    func loginButtonDidTap() {
        presentToWelcomVC()
//        pushToWelcomVC()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(titleLabel)
        self.view.addSubview(idTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(loginButton)
//        textFiedlShouldReturn(idTextField)

    }
}
