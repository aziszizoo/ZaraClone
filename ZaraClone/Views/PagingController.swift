//
//  PagingController.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI

struct PagingController<T: View>: View {
    
    var viewControllers: [UIHostingController<T>] = []
    
    @State var currentPage = 0
    @Binding var selectedIndex: Int?
    
    var body: some View {
        ZStack(alignment: .trailing) {
            CollectionView(controllers: viewControllers, currentPage: $currentPage, selectedIndex: $selectedIndex)
            
            VerticalPageIndicator(numberOfPages: viewControllers.count, selectedPageIndex: $currentPage)
                .padding(.trailing, 10)
        }
    }
}

struct PagingController_Previews: PreviewProvider {
    static var previews: some View {
        PagingController(viewControllers: Page.data.map {
            UIHostingController(rootView: PageView(page: $0))
        }, selectedIndex: .constant(0))
    }
}
