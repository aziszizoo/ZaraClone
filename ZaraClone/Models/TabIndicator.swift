//
//  TabIndicator.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI

struct TabIndicator: View {
    
    var category: Category
    
    var body: some View {
        HStack{
            ForEach(0..<Category.allCases.count) { i in
                TabIndicatorItem(category: Category.allCases[i], isActive: Category.allCases[i] == category)
            }
        }.frame(width: 250, alignment: .center)
    }
}


struct TabIndicator_Previews: PreviewProvider {
    static var previews: some View {
        TabIndicator(category: Category.men)
    }
}
