//
//  CloseButton.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 21/05/21.
//

import SwiftUI

struct CloseButton: View {

    var onDismiss = {}

    var body: some View {
        Button(action: onDismiss, label: {
            Image(systemName: "xmark")
                .thinFont()
                .textColor()
        })
    }
}

struct CloseButton_Previews: PreviewProvider {
    static var previews: some View {
        CloseButton()
    }
}
