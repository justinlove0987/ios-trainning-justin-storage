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

        // 請實作使Tesla class繼承Car class，並新增一個range property (Double)且繼承Car class的 initiallizer。

        class Car {

            var make: String
            var model: String
            var color: String

            init(make: String, model: String, color: String) {
                self.make = make
                self.model = model
                self.color = color
            }

            convenience init(make: String, model: String) {
                self.init(make: make, model: model, color: "White")
            }

        }

        class Tesla: Car {
            var range: Double

            override init(make: String, model: String, color: String) {
                self.range = 300
                super.init(make: make, model: model, color: color)
            }
        }

        // 請實作convience initiallizer的例子。

//        class Car {
//            let color: String
//            let model: String
//
//            init(color: String, model: String) {
//                self.color = color
//                self.model = model
//            }
//        }
    }

}
