//
//  ProductDescriptionCell.swift
//  Pomelo
//
//  Created by Sujin on 4/11/2562 BE.
//  Copyright © 2562 Pomelo Fashion. All rights reserved.
//

import Foundation
import SkeletonView
class ProductDescriptionCell: UITableViewCell {

    @IBOutlet weak var manufactorLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var topPriceLabel: UILabel!
    @IBOutlet weak var bottomPriceLabel: UILabel!

    func setupCell(obj: ((brand: String?, price: String?, salePrice: String?, name: String))) {
//        topPriceLabel.isHidden = obj.salePrice.isNilOrEmpty
//        bottomPriceLabel.isHidden = obj.price.isNilOrEmpty
//        if let price = obj.price {
//            if let discountedPrice = obj.salePrice {
//                bottomPriceLabel.attributedText = discountedPrice.toAttributedText(pmlStyle: .SUBTITLE1, alignment: .right).colored(with: UIColor.coralPink)
//                topPriceLabel.attributedText = price.toAttributedText(pmlStyle: .BODY3, alignment: .right).struckthrough.colored(with: UIColor.darkGrey)
//            } else {
//                bottomPriceLabel.attributedText = price.toAttributedText(pmlStyle: .SUBTITLE1, alignment: .right).colored(with: .black)
//            }
//        }
//        manufactorLabel.isHidden = obj.brand.isNilOrEmpty
//        manufactorLabel.attributedText = obj.brand.unwrapped(or: "").uppercased().toAttributedText(pmlStyle: .SUBTITLE5, alignment: .left)
//        nameLabel.attributedText = obj.name.capitalized.toAttributedText(pmlStyle: .BODY2, alignment: .left)
    }
}
