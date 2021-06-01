//
//  BookmarkScreen.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI

struct BookmarkScreen: View {
    
    @State var isTesting = false
    
    var body: some View {
        
        VStack(spacing: 40) {
            if isTesting {
                Text("Testing")
            } else {
                Text("Bookmark")
            }
            Button("Click me ") {
                isTesting.toggle()
            }
            .padding()
            .background(Color.yellow)
        }
    }
}

struct BookmarkScreen_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkScreen()
    }
}
