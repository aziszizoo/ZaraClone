//
//  ImageView.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI
import Kingfisher

struct ImageView: View {
    
    var imgUrl: String
    private let screenWidth = Sizes.screenWidth
    private let screenHeight = Sizes.screenHeight
        
    var body: some View {
        
        URL(string: imgUrl).map {
            KFImage($0)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidth, height: screenHeight)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imgUrl: "zara-textured-check-shirt 3.JPG")
    }
}

