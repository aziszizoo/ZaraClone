//
//  LargeNakedButton.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 21/05/21.
//

import SwiftUI

struct LargeNakedButton: View {
    var text: String
     var action = {}

     var body: some View {
         Button(action: action, label: {
             Text(text)
                 .font(.system(size: 30, weight: Font.Weight.black, design: Font.Design.default))
                 .foregroundColor(.text)
                .frame(maxWidth: .infinity, alignment: .leading)
         })
     }
}

struct LargeNakedButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeNakedButton(text: "MY INFORMATION")
    }
}
