//
//  MainTableViewController.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/3.
//

import UIKit

class MainUITableViewTableViewController: UITableViewController {

    private var rowTitlesInSection = ["ExpandableCell", "Animatable Arrow"]

    private let presentingViewControllers = [ExpandCellWithUILabelNumberOfLinesController(), AnimatableDirectionArrowViewController()]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

    }

    // MARK: - Table view data source
    
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
        self.navigationController?.pushViewController(presentingViewControllers[indexPath.row], animated: true)
    }

}
