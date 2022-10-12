//
//  RotatableView.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/12.
//

import UIKit

// 請實作一個會重複旋轉的searching image

class RotatableView_ViewController: UIViewController {

    private var searchImageView = UIImageView()

    private var rotateImageButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        searchImageView.image = UIImage(named: "searching")
        searchImageView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(searchImageView)

        NSLayoutConstraint.activate([
            searchImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            searchImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),

        ])
    }
}
