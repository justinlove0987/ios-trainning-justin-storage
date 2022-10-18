//
//  ClassPractice.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class ClassPractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 請實作convience initiallizer的例子。

        class Car {
            let color: String
            let model: String

            init(color: String, model: String) {
                self.color = color
                self.model = model
            }
            
            convenience init(color: String) {
                self.init(color: color, model: "rav4")
            }
        }
    }

}
