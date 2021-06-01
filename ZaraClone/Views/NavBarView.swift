//
//  NavBarView.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI

struct NavBarView: View {
    
    var title: String
    var onReturn = {}
    var onFilter = {}

    var body: some View {
        HStack {
            
            Button(action: onReturn, label: {
                Image(systemName: "arrow.left")
                    .thinFont()
            })
            .frame(width: 40, alignment: .leading)
            
            Text(title)
                .font(.system(size: 18, weight: Font.Weight.bold, design: Font.Design.default))
                .frame(maxWidth: .infinity, alignment: .center)
            
            Button(action: onFilter, label: {
                Text("FILTERS")
                    .lightFont()
            })
        }
        .padding(.horizontal)
        .padding(.bottom, 10)
        .textColor()
        .frame(height: Sizes.navBarHeight, alignment: .bottom)
        .bgColor()
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView(title: "NEW IN")
            .preferredColorScheme(.light)
    }
}
