//
//  Menu.swift
//  fancy_app
//
//  Created by HYEONJUN PARK on 2023/05/10.
//

import SwiftUI

struct MenuModel : Identifiable {
    let id = UUID().uuidString
    let name: String
    let image: String
    let colors: [Color]
}
