//
//  AppAction.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import Foundation

enum AppAction {
    case addProducts(_ products: [Product])
    case bookmark(_ product: Product)
    case removeFromBookmark(_ index: Int)
    case addToCart(_ product: Product)
    case login
}
