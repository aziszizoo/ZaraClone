//
//  TabIndicatorItem.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI

struct TabIndicatorItem: View {
    
    var category: Category
    var isActive: Bool = false
    
    
    var body: some View {
        
        return VStack(spacing: 0) {
            Text(category.toString().uppercased())
                .font(.system(size: 18,
                              weight: isActive ? Font.Weight.bold : Font.Weight.light,
                              design: Font.Design.default))
                .frame(maxWidth: .infinity)
                .layoutPriority(1)
                
            if isActive {
                Rectangle()
                    .frame(width: 50 , height: 2, alignment: .center)
            }
        }.textColor()
    }
}


struct TabIndicatorItem_Previews: PreviewProvider {
    static var previews: some View {
        TabIndicatorItem(category: Category.men)
    }
}
