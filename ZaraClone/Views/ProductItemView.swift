//
//  ProductItemView.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI
import Kingfisher

struct ProductItemView: View {
    
    var product: Product
    var showDetail = {}
    var bookmark = {}
    
    var body: some View {
        return VStack {
            
            KFImage(URL(string: product.mainImage)!)
                .resizable()
                .scaledToFill()
                .frame(width: (UIScreen.main.bounds.width / 2 - 25), height: 250)
                .clipped()
                .onTapGesture(perform: showDetail)
            
            VStack(alignment: .leading) {
                Text(product.title)
                    .lightFont()
                    .lineLimit(1)
                
                HStack {
                    Text(product.price)
                        .lightFont()
                    Spacer()
                    Button(action: bookmark, label: {
                        Image(systemName: "bookmark")
                            .lightFont()
                            .textColor()
                    })
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Product.men.first!)
    }
}
