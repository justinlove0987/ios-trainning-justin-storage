//
//  SectionBackgroundDecorationView.swift
//  iOSTrainning
//
//  Created by justin on 2022/8/31.
//

import UIKit

class SectionBackgroundDecorationView: UICollectionReusableView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
}

extension SectionBackgroundDecorationView {
    func configure() {
        backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 12
    }
}
