//
//  DistinctSectionsViewController.swift
//  iOSTrainning
//
//  Created by justin on 2022/8/29.
//

import UIKit

class DistinctSectionsViewController: UIViewController {

    enum SectionLayoutKind: Int, CaseIterable {
        case list, grid5, grid3
    }

    var dataSource: UICollectionViewDiffableDataSource<SectionLayoutKind, Int>! = nil
    var collectionView: UICollectionView! = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Distinct Sections"
        configureHierarchy()
        configureDataSource()
    }
}

extension DistinctSectionsViewController {
    /// - Tag: PerSection
    func createLayout() -> UICollectionViewLayout {

        let layout = UICollectionViewLayout()

        return layout
    }
}

extension DistinctSectionsViewController {
    func configureHierarchy() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .systemBackground
        view.addSubview(collectionView)
        collectionView.delegate = self
    }
    func configureDataSource() {

    }
}

extension DistinctSectionsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

