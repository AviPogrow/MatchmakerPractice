//
//  LoginViewController.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import UIKit

final class LoginViewController: UIViewController {

    let viewModel: LoginViewModel

    private let loginButton = UIButton(type: .system)

    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Login"
        view.backgroundColor = .systemBackground

        configureUI()
    }

    private func configureUI() {

        loginButton.setTitle("Login", for: .normal)

        loginButton.addTarget(
            self,
            action: #selector(loginTapped),
            for: .touchUpInside
        )

        loginButton.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(loginButton)

        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(
                equalTo: view.centerXAnchor
            ),
            loginButton.centerYAnchor.constraint(
                equalTo: view.centerYAnchor
            )
        ])
    }

    @objc
    private func loginTapped() {

        Task {
            await viewModel.login(
                email: "test@test.com",
                password: "password"
            )
        }
    }
}
