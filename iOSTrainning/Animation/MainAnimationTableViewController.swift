//
//  MainAnimationTableViewController.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/12.
//

import UIKit

class MainAnimationTableViewController: UITableViewController {

    private var titleForRows: [String] = ["Rotatble View"]

    private var presentingViewControllers: [UIViewController] = [RotatableView_ViewController()]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presentingViewControllers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = titleForRows[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(presentingViewControllers[indexPath.row], animated: true)
    }

}
