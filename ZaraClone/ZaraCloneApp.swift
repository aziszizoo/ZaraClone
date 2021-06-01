//
//  ZaraCloneApp.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 21/05/21.
//

import SwiftUI

@main
struct ZaraReplicaApp: App {
    
    @StateObject private var store = Store()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
