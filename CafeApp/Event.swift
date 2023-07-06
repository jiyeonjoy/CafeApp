//
//  Event.swift
//  CafeApp
//
//  Created by 최지연/클라이언트 on 2023/06/08.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()

    let image: Image
    let title: String
    let description: String
}
