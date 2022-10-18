//
//  MainTableViewController.swift
//  iOSTrainning
//
//  Created by justin on 2022/8/29.
//

import UIKit

class MainTableViewController: UITableViewController {

    private let rowTitlesInSection = ["UITableView",
                                      "CollectionView", "Animation", "Constraint", "Swift"]

    private var presentingViewControllers = [MainUITableViewTableViewController(),
                                             MainCollectionViewTableViewController(),
                                             MainAnimationTableViewController(),
                                             MainConstraintViewController(), MainSwiftViewController()]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowTitlesInSection.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        var configuration = cell.defaultContentConfiguration()
        configuration.text = rowTitlesInSection[indexPath.row]

        cell.contentConfiguration = configuration

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let presentingVC = presentingViewControllers[indexPath.row]

        navigationController?.pushViewController(presentingVC, animated: true)
    }
}
