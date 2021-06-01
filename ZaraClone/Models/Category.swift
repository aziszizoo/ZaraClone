//
//  Category.swift
//  ZaraClone
//
//  Created by ZISACHMAD on 21/05/21.
//

import Foundation

enum Category : Int, CaseIterable {
    case men = 0
    case women = 12
    case kids = 2
    
    private var cases: [String]  {
        ["Men", "Women", "Kids"]
    }
    
    func toString() -> String {
        cases[self.rawValue]
    }
}
