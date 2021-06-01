//
//  CollectionCell.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 21/05/21.
//

import UIKit
import SwiftUI

class CollectionCell: UICollectionViewCell {
    
    static let reuseId: String = "CollectionCell"
    
    var viewController: UIViewController? {
        didSet {
            if let viewController = self.viewController {
                setupCell(viewController)
            }
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        if let viewController = self.viewController {
            setupCell(viewController)
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    private func setupCell(_ controller: UIViewController) {
        
        guard let view = controller.view else {
            return
        }
                
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        self.addSubview(view)
        
        NSLayoutConstraint.activate( [
            view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            view.topAnchor.constraint(equalTo: contentView.topAnchor),
            view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
}
