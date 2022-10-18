//
//  Array_Practice.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class ArrayPractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        // 請實作 建立一個新的Dictionary，如果ratint是1-5就是"Bad"；6-10就是"Good"。
        // Ex: ["Bad": 7, "Good": 4]

        let ratings: [Double] = [1, 3, 6, 10]

        let result = ratings.reduce(into: [:]) { (result: inout [String: Int], rating: Double) in
            switch rating {
            case 1...5:
                result["Bad", default: 0] += 1
            case 6...10:
                result["Good", default: 0] += 1
            default:
                break
            }
        }

        print(result)
    }

}
