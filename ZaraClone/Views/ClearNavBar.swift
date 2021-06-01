//
//  ClearNavBar.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 22/05/21.
//

import SwiftUI

struct ClearNavBar: View {
    
    var opacity: Double
    var onDismiss = {}
    
    var body: some View {
        HStack {
            
            Button(action: onDismiss, label: {
                Image(systemName: "xmark")
                    .font(.system(size: 25, weight: Font.Weight.light, design: Font.Design.default))
                    .foregroundColor(.gray)
                    .padding(10)
            })
            Spacer()
        }
        .padding(.horizontal, 20)
        .frame(height: UIScreen.main.bounds.width * 0.22, alignment: .bottom)
        .background(Color.background.opacity(opacity))
        .edgesIgnoringSafeArea(.top)
    }
}

struct ClearNavBar_Previews: PreviewProvider {
    static var previews: some View {
        ClearNavBar(opacity: 1)
    }
}
