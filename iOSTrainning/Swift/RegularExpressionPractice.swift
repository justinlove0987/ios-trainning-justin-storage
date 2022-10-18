//
//  RegularExpressionPractice.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class RegularExpressionPractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // 請實作檢查下方phoneNumber是否符合手機格式。

        let phoneNumber = "0988096392"

        let isPhoneNumber = phoneNumber.range(of: "09[0-9]{8}", options: .regularExpression) != nil

        print(isPhoneNumber)


    }
}
