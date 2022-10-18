//
//  ReferencePractice.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class ReferencePractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        // 請透過Student、Teacher Class實作並解釋weak reference的意思。


    }

    private class Student {
        var teacher: Teacher?
        deinit { print("student deinit") }
    }

    private class Teacher {
        weak var student: Student?
        deinit { print("teacher deinit") }
    }

}
