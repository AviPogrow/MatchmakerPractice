//
//  NasiGirlsListViewController.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import UIKit

final class NasiGirlsListViewController: UIViewController {

    let viewModel: NasiGirlsListViewModel
    private let tableView = UITableView()

    init(viewModel: NasiGirlsListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Girls UIKit"
        view.backgroundColor = .systemBackground

        configureTableView()
    }

    private func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self

        tableView.register(
            UITableViewCell.self,
            forCellReuseIdentifier: "Cell"
        )

        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension NasiGirlsListViewController: UITableViewDataSource {

    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        viewModel.girls.count
    }

    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "Cell",
            for: indexPath
        )

        let girl = viewModel.girls[indexPath.row]

        cell.textLabel?.text = "\(girl.name), \(girl.age)"
        cell.accessoryType = .disclosureIndicator

        return cell
    }
}

extension NasiGirlsListViewController: UITableViewDelegate {

    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        tableView.deselectRow(
            at: indexPath,
            animated: true
        )

        viewModel.didSelectGirl(
            at: indexPath.row
        )
    }
}
