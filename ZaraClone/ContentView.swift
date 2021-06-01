//
//  ContentView.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 21/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var store: Store
    @State private var presentScreen = false
    @State private var selectedTab: Tab?
    @State private var selectedCategory: Category?
        
    var body: some View {
        if store.state.isLoggedIn {
            createHomeScreen()
        } else {
            createLoginScreen()
        }
    }
    
    fileprivate func createLoginScreen() -> some View {
        return LoginScreen {
            store.dispatch(.login)
        }
        .transition(.move(edge: .bottom))
        .animation(.easeOut)
    }
    
    fileprivate func createHomeScreen() -> some View {
        
        return ZStack(alignment: .bottom){
            HomeScreen(category: $selectedCategory)
            TabbarView(tab: $selectedTab)
        }
        .frame(maxHeight: .infinity)
        .fullScreenCover(isPresented: $presentScreen, content: {
            if selectedCategory != nil{
                ProductListingScreen(category: $selectedCategory)
            }
            if let tab = selectedTab {
                presentScreen(tab)
            }
        })
        .onChange(of: selectedCategory) { category in
            presentScreen.toggle()
        }
        .onChange(of: selectedTab) { _ in
            presentScreen.toggle()
        }
    }
    
    @ViewBuilder
    private func presentScreen(_ tab: Tab) -> some View {
        switch tab {
        case .bookmark:
            Text("Bookmark")
        case .cart:
            Text("Shopping bar")
        case .search:
            Text("Search")
        case .profile:
            Text("Profile")
        case .menu:
            Text("Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Store())
    }
}
