//
//  ProductDetailScreen.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI
import Kingfisher


struct ProductDetailScreen: View {
    
    var product: Product
    var onDismiss = {}
    @State private var progress: CGFloat = 1
    @State private var selectedIndex: Int?
    @Namespace private var animation
    private let foldedHeight: CGFloat = 150
    private let expandedHeight = Sizes.screenHeight - UIScreen.main.bounds.width * 0.22

    var body: some View {
        
        ZStack(alignment: .top) {
            createPagingController()
            
            if selectedIndex == nil {
                createCustomSheet()
            } else {
                createProductImageView()
            }
            
            createNavBarView()
        }
        .edgesIgnoringSafeArea(.all)
        .animation(.linear, value: selectedIndex)
        
    }
    
    fileprivate func createCustomSheet() -> some View {
        CustomSheet(progress: self.$progress, foldedHeight: foldedHeight, expandedHeight: expandedHeight) {
            ProductDetailContent(product: product)
        }
        .transition(.move(edge: .bottom))
    }
    
    fileprivate func createProductImageView() -> ProductImageView {
        let images = product.images
        return ProductImageView(imgUrl: images[selectedIndex!], animation: animation)
            { self.selectedIndex = nil }
    }
    
    fileprivate func createPagingController() -> some View {
        PagingController(viewControllers: product.images.map(
                            {UIHostingController(rootView: ImageView(imgUrl: $0)
                                                    .matchedGeometryEffect(id: $0, in: animation))}), selectedIndex: self.$selectedIndex)
    }
    
    fileprivate func createNavBarView() -> some View {
        ClearNavBar(opacity: Double(1 - progress), onDismiss: onDismiss)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }

}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailScreen(product: Product.men.first!)
    }
}
