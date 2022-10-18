//
//  MainConstraintViewController.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class MainConstraintViewController: ModelTableViewController {

    private var reuseStoaryboardName = "Constraint"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentingViewControllers = [
            UIStoryboard(name: reuseStoaryboardName, bundle: nil).instantiateViewController(withIdentifier: "BasicHuggingPriority_ViewController")
        ]
    }

}
