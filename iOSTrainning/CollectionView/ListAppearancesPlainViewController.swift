//
//  ListAppearancesPlainViewController.swift
//  iOSTrainning
//
//  Created by justin on 2022/9/6.
//

import UIKit

class ListAppearancesPlainViewController: UIViewController {

    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Int, Int>!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureDataSource()
    }

    private func createLayout() -> UICollectionViewLayout {
        return UICollectionViewCompositionalLayout { sectionIndex, layoutEnvironment in
            var config = UICollectionLayoutListConfiguration(appearance: .plain)
            config.headerMode = .firstItemInSection
            return NSCollectionLayoutSection.list(using: config, layoutEnvironment: layoutEnvironment)
        }
    }

    private func configureHierarchy() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(collectionView)
    }

    private func configureDataSource() {
        let headerRegistration = UICollectionView.CellRegistration<UICollectionViewListCell, Int> { (cell, indexPath, item) in
            var content = cell.defaultContentConfiguration()
            content.text = "Section \(item)"
            cell.contentConfiguration = content

            let customAccessory = UICellAccessory.CustomViewConfiguration(customView: UIImageView(image: UIImage(systemName: "house")), placement: .leading(displayed: .always))

            cell.accessories = [.outlineDisclosure()]
        }

        let cellRegistration = UICollectionView.CellRegistration<UICollectionViewListCell, Int> {  (cell, indexPath, item) in

            var content = cell.defaultContentConfiguration()
            content.text = "Item \(item)"
            cell.contentConfiguration = content
        }

        dataSource = UICollectionViewDiffableDataSource<Int, Int>(collectionView: collectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, item: Int) -> UICollectionViewCell? in
            if indexPath.item == 0 {
                return collectionView.dequeueConfiguredReusableCell(using: headerRegistration, for: indexPath, item: item)
            } else {
                return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: item)
            }
        }

        var snapshot = NSDiffableDataSourceSnapshot<Int, Int>()
        snapshot.appendSections([0])
        var sectionSnapshot = NSDiffableDataSourceSectionSnapshot<Int>()

        sectionSnapshot.append([0])

        sectionSnapshot.append([1, 2], to: 0)

        dataSource.apply(sectionSnapshot, to: 0)


    }
}
