//
//  ProtocolPractice.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

protocol Parser {
    associatedtype Input
    associatedtype Output

    func parse(input: Input) -> Output
}

class ProtocolPractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 請改寫Parser Protocol，使其parse function的parmeter type和return type沒有預設型別。

    }

}
