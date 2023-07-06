//
//  SettingView.swift
//  CafeApp
//
//  Created by 최지연/클라이언트 on 2023/07/06.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section {
                SettingUserInfoSectionView()
            }
            Button("회원 정보 수정") {}
                .accentColor(.black)
            Button("회원 탈퇴") {}
                .accentColor(.black)
        }
            .navigationTitle("설정")
            .listStyle(GroupedListStyle())
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfoSectionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(User.shared.username)
                    .font(.title)
                Text(User.shared.account)
                    .font(.caption)
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("로그아웃")
                    .accentColor(.green)
                    .font(.system(size: 14.0, weight: .bold, design: .default))
            }
            .padding(8.0)
            .overlay(Capsule().stroke(Color.green))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
