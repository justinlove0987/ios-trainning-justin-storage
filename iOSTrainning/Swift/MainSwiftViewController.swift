//
//  MainSwiftViewController.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class MainSwiftViewController: ModelTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        presentingViewControllers = [ArrayPractice(),
                                     ReferencePractice(),
                                     ClosurePractice()]

//        _ = presentingViewControllers.map { $0.view.backgroundColor = .white }
    }

}
