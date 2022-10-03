//
//  ExpandableCell.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/3.
//

import UIKit

class ExpandCellWithUILabelNumberOfLinesController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = "Paragraphs are distinct blocks of text which section out a larger piece of writing—stories, novels, articles, creative writing or professional writing pieces—making it easier to read and understand. Good paragraphs are a handy writing skill for many forms of literature, and good writers can greatly enhance the readability of their news, essays, or fiction writing when constructed properly."

        cell.textLabel?.numberOfLines = 1

        return cell
    }

}
