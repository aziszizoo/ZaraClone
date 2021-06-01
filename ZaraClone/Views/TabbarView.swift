//
//  TabbarView.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//


import SwiftUI

struct TabbarView: View {
    
    @Binding var tab: Tab?
    
    var body: some View {
        HStack {
            
            Button(action: {
               onTabSelected(.search)
            }, label: {
                Image(systemName: "magnifyingglass")
                    .thinFont()
                    .frame(maxWidth: .infinity)
            })
            
            Button(action: {
                onTabSelected(.bookmark)
            }, label: {
                Image(systemName: "bookmark")
                    .thinFont()
                    .frame(maxWidth: .infinity)
            })
            
            Button(action: {
                onTabSelected(.menu)
            }, label: {
                Text("MENU").thinFont()
                    .frame(maxWidth: .infinity)
            })
              
            Button(action: {
                onTabSelected(.profile)
            }, label: {
                Image(systemName: "person")
                    .thinFont()
                    .frame(maxWidth: .infinity)
            })
            
            Button(action: {
                onTabSelected(.cart)
            }, label: {
                Image(systemName: "bag")
                    .thinFont()
                    .overlay(Text("9+").font(.system(size: 7, weight: Font.Weight.light, design: Font.Design.default))
                            .padding(.top, 2), alignment: .center)
                    .frame(maxWidth: .infinity)
            })
        }
        .frame(maxWidth: .infinity, maxHeight: Sizes.tabHeight, alignment: .top)
        .textColor()
        .bgColor()
    }
    
    func onTabSelected(_ tab: Tab)  {
        self.tab = tab
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView(tab: .constant(.bookmark))
    }
}
