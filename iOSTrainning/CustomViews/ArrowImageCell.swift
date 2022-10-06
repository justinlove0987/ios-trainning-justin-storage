//
//  ArrowImageCell.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/6.
//

import UIKit

class ArrowImageCell: UITableViewCell {

    private var arrowImageView: UIImageView = UIImageView(image: UIImage(named: "arrow_down"))


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        accessoryView = arrowImageView
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
