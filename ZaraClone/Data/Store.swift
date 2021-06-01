//
//  Store.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import Foundation

class Store: ObservableObject {
    
    struct State {
        var products: [Product]
        var bookmarked: [Product]
        var shoppingCart: [Product]
        var isLoggedIn: Bool = false
    }
    
    enum Action {
        case addProducts(_ products: [Product])
        case bookmark(_ product: Product)
        case removeFromBookmark(_ index: Int)
        case addToCart(_ product: Product)
        case login
    }
    
    @Published private(set) var state = State(products: [], bookmarked: [], shoppingCart: [])
    
    func reducer(state: inout State, action: Action) {
        switch action {
        case .bookmark(let product):
            state.bookmarked.append(product)
        case .addToCart(let product):
            state.shoppingCart.append(product)
        case .removeFromBookmark(let index):
            state.bookmarked.remove(at: index)
        case .addProducts(let products):
            state.products = products
        case .login: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {self.state.isLoggedIn = true}
        }
    }
    
    func dispatch(_ action: Action) {
        reducer(state: &state, action: action)
    }
}
