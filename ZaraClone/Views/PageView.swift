//
//  PageVIEW.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI

struct PageView: View {
    
    var page: Page
    
    var body: some View {
        VStack {
            Text(page.title)
                .multilineTextAlignment(.center)
                .font(.system(size: 50, weight: Font.Weight.black))
                .textColor()
                .frame(width: Sizes.screenWidth * 0.95)
            
            Text(page.description)
                .textColor()
                .multilineTextAlignment(.center)
                .frame(width: 300, alignment: .center)
            
            Text("View")
                .font(.system(size: 20, weight: Font.Weight.bold, design: Font.Design.default))
                .textColor()
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .border(Color.text, width: 1)
        }
        .frame(height: Sizes.screenHeight)
        .bgColor()
        .edgesIgnoringSafeArea(.all)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.default)
    }
}
