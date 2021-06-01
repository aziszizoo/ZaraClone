//
//  ProductListingScreen.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI


struct ProductListingScreen: View {
    
    @Binding var category: Category?
    // 1
    @EnvironmentObject private var store: Store
    @State private var selectedProduct: Product?
    
    // 2
    private let columns = [
        GridItem(.adaptive(minimum: 150), spacing: 20)
    ]
    
    var body: some View {
        return ZStack(alignment: .top) {
            ScrollView {
                // 3
                createGrid()
            }
            .padding(.top, Sizes.navBarHeight)
            .padding(.horizontal, 15)
            // 4
            createNavBar()
        }
        .onAppear(perform: {
            // 5
            setProducts()
        })
        .fullScreenCover(item: $selectedProduct, content: {
            ProductDetailScreen(product: $0){
                selectedProduct = nil
            }
        })
    }
    
    // 3
    fileprivate func createGrid() -> LazyVGrid<ForEach<[Product], String, ProductItemView>> {
        LazyVGrid(columns: self.columns, alignment: .center, spacing: 40) {
            ForEach(store.state.products) { product in
                createProductItemView(product) // 7
            }
        }
    }
    
    // 4
    fileprivate func createNavBar() -> NavBarView {
        return NavBarView(title: "NEW IN") {
            category = nil
        } onFilter: { }
    }
    
    // 5
    fileprivate func setProducts() {
        guard let cat = self.category else {
            return
        }
        switch cat {
        case .men:
            store.dispatch(.addProducts(Product.men))
        case .women:
            store.dispatch(.addProducts(Product.women))
        case .kids:
            store.dispatch(.addProducts(Product.kids))
        }
    }
    
    // 6
    fileprivate func createProductItemView(_ product: Product) -> ProductItemView {
        return ProductItemView(product: product) {
            selectedProduct = product
        } bookmark: {
            store.dispatch(.bookmark(product))
        }
    }
    
}

struct ProductListingScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductListingScreen(category: .constant(Category.kids)).environmentObject(Store())
    }
}
