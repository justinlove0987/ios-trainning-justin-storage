//
//  VC.swift
//  iOSTrainning
//
//  Created by justin on 2022/9/8.
//

import UIKit

class VC: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(<#T##nib: UINib?##UINib?#>, forHeaderFooterViewReuseIdentifier: <#T##String#>)


        tableView.dequeueReusableHeaderFooterView(withIdentifier: <#T##String#>)
    }




}
