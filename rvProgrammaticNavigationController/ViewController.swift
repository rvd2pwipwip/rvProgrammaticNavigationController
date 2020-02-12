//
//  ViewController.swift
//  rvProgrammaticNavigationController
//
//  Created by Herve Desrosiers on 2020-02-12.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setLoginButton()
        setSignupButton()
    }
    
    fileprivate func setLoginButton() {
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    fileprivate func setSignupButton() {
        view.addSubview(signupButton)
        NSLayoutConstraint.activate([
            signupButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            signupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signupButton.widthAnchor.constraint(equalToConstant: 200),
            signupButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private let loginButton: UIButton = {
        let lb = UIButton()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.setTitle("Log In", for: .normal)
        lb.setTitleColor(.white, for: .normal)
        lb.backgroundColor = .purple
        lb.layer.cornerRadius = 25
        lb.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return lb
    }()
    
    private let signupButton: UIButton = {
        let sb = UIButton()
        sb.translatesAutoresizingMaskIntoConstraints = false
        sb.setTitle("Sign Up", for: .normal)
        sb.setTitleColor(.black, for: .normal)
        sb.backgroundColor = .green
        sb.layer.cornerRadius = 25
        sb.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return sb
    }()

    @objc func buttonTapped(_ sender: UIButton) {
        if sender == loginButton {
            print("Log in!")
            let loginViewController = LoginViewController()
            self.navigationController?.pushViewController(loginViewController, animated: true)
        } else {
            print("Sign up!")
            let signupViewController = SignupViewController()
            self.navigationController?.pushViewController(signupViewController, animated: true)
        }
    }
}

