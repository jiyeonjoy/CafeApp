//
//  Tab.swift
//  CafeApp
//
//  Created by 최지연/클라이언트 on 2023/06/02.
//

import SwiftUI

enum Tab {
    case home
    case other

    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        }
    }

    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}
