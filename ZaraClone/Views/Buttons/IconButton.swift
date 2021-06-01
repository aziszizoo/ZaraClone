//
//  IconButton.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 21/05/21.
//

import SwiftUI

struct IconButton: View {
    var icon: String
    var action = {}

    var body: some View {
        Button(action: action, label: {
            Image(systemName: icon)
                .lightFont()
                .textColor()
        })
    }
}

struct IconButton_Previews: PreviewProvider {
    static var previews: some View {
        IconButton(icon: "square.and.arrow.up")
    }
}
