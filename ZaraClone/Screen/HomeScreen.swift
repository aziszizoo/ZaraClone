//
//  HomeScreen.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI

struct HomeScreen: View {
    
    @Binding var category: Category?
    private let data = Home.data
    @State private var selected = Home.data.first!
    @EnvironmentObject private var store: Store

    var body: some View {
        return ZStack(alignment: .top) {
            TabView(selection: self.$selected.id) {
                ForEach(data) { item in
                    createPageController(item)
                        .tag(item.id)
                        .onTapGesture(count: 1, perform: { category = item.id })
                }
            }
            .background(Color.background)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            TabIndicator(category: selected.id)
                .padding(.top, 30)
        }
    }
    fileprivate func createPageController(_ data: Home) -> PagingController<PageView> {
        return PagingController(
            viewControllers: data.pages.map({UIHostingController(rootView: PageView(page: $0) )}), selectedIndex: .constant(0)
        )
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(category: .constant(Category.kids))
    }
}
