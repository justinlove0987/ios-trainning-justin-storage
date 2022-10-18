//
//  ModelTableViewController.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class ModelTableViewController: UITableViewController {

    private var titleForRows: [String] = ["Rotatble View"]

    var presentingViewControllers: [UIViewController] = []

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

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

        cell.textLabel?.text = "\(type(of: presentingViewControllers[indexPath.row]))"

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(presentingViewControllers[indexPath.row], animated: true)
    }
}
