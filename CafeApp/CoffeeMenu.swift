//
//  CoffeeMenu.swift
//  CafeApp
//
//  Created by 최지연/클라이언트 on 2023/06/08.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let image: Image // UIImage
    let name: String

    let id = UUID()
    
    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 라떼"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 라떼"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 라떼"),
    ]
}
