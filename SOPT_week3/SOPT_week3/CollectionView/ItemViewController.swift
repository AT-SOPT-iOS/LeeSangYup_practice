//
//  ItemViewController.swift
//  SOPT_week3
//
//  Created by 이상엽 on 4/26/25.
//

import UIKit

final class ItemViewController: UIViewController {
    
    final let carrotLineSpacing: CGFloat = 10
    final let carrotInterLineSpacing: CGFloat = 21
    final let cellHeight: CGFloat = 198
    final let carrotInset = UIEdgeInsets(top: 48, left: 20, bottom: 10, right: 20)
    final let carrotInterItemSpacing: CGFloat = 10
    
    private let itemData = ItemModel.dummy()


    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()

        setCollectionViewLayout()
        register()
        setDelegate()
    }
    
    private func setLayout() {
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
    
    private func setCollectionViewLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        
        let screenWidth = UIScreen.main.bounds.width
        let doubleCellWidth = screenWidth - carrotInset.left - carrotInset.right - carrotInterItemSpacing
        flowLayout.itemSize = CGSize(width: doubleCellWidth / 2, height: cellHeight)
        flowLayout.minimumLineSpacing = carrotLineSpacing
        flowLayout.minimumInteritemSpacing = carrotInterItemSpacing
        self.collectionView.setCollectionViewLayout(flowLayout, animated: false)
    }
    
    private func register() {
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
    }
    
    private func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension ItemViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell else { return UICollectionViewCell() }
        cell.dataBind(itemData[indexPath.item])
        return cell
    }
    
    
}
extension ItemViewController: UICollectionViewDelegate {
    
}
