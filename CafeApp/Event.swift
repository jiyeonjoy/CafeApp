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
    
    static let sample: [Event] = [
        Event(image: Image("coffee"), title: "타이틀1!!!", description: "내용입니당11!!"),
        Event(image: Image("coffee"), title: "타이틀2!!!", description: "내용입니당22!!"),
        Event(image: Image("coffee"), title: "타이틀3!!!", description: "내용입니당33!!"),
        Event(image: Image("coffee"), title: "타이틀4!!!", description: "내용입니당44!!"),
    ]
}
