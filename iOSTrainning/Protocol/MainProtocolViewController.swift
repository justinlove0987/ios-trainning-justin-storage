//
//  MainProtocolViewController.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class MainProtocolViewController: ModelTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        presentingViewControllers = [
            CustomStringConvertiblePractice(),
            ProtocolPractice(),
            RawRepresentablePractice(),
            OptionSetPractice()
        ]
        
    }
}
