//
//  ItemModel.swift
//  SOPT_week3
//
//  Created by 이상엽 on 4/26/25.
//

import UIKit

struct ItemModel {
    let itemImg: UIImage
    let name: String
    let price: String
    var heartIsSelected: Bool
}

extension ItemModel {
    static func dummy() -> [ItemModel] {
        return [
            ItemModel(itemImg: .toong1, name: "퉁퉁퉁사후르", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .toong2, name: "오쏘몰", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .toong3, name: "애플워치", price: "5000", heartIsSelected: true),
            ItemModel(itemImg: .toong4, name: "가방", price: "5000", heartIsSelected: true),
            ItemModel(itemImg: .toong5, name: "헤드셋", price: "5000", heartIsSelected: true),
            ItemModel(itemImg: .toong6, name: "틴트", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .toong7, name: "카메라", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .toong8, name: "로션", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .toong3, name: "락스", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .toong1, name: "가방", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .toong6, name: "헤드셋", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .toong5, name: "틴트", price: "5000", heartIsSelected: false)
        ]
    }
}
