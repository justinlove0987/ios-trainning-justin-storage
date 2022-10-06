//
//  DirectionArrowViewController.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/6.
//

import UIKit

class AnimatableDirectionArrowViewController: UITableViewController {

    struct RowState {
        var isTapped: Bool = false
    }

    private var datas: [RowState] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(ArrowImageCell.self, forCellReuseIdentifier: "Cell")

        for _ in 0..<50 {
            datas.append(RowState())
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ArrowImageCell else { return UITableViewCell() }

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }

}
