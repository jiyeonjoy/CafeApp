//
//  User.swift
//  CafeApp
//
//  Created by 최지연/클라이언트 on 2023/07/06.
//

import Foundation

struct User {
    let username: String
    let account: String

    static let shared = User(username: "조이", account: "joy@swift.com")
}
