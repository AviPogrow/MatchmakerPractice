//
//  NasiGirlDetailViewController.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import UIKit

final class NasiGirlDetailViewController: UIViewController {

    private let viewModel: NasiGirlDetailViewModel

    private let nameLabel = UILabel()
    private let ageLabel = UILabel()

    init(viewModel: NasiGirlDetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = viewModel.nameText
        view.backgroundColor = .systemBackground

        configureUI()
    }

    private func configureUI() {
        nameLabel.text = viewModel.nameText
        nameLabel.font = .preferredFont(forTextStyle: .title1)

        ageLabel.text = viewModel.ageText
        ageLabel.font = .preferredFont(forTextStyle: .body)

        let stackView = UIStackView(
            arrangedSubviews: [
                nameLabel,
                ageLabel
            ]
        )

        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
