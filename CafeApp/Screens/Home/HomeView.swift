//
//  HomeView.swift
//  CafeApp
//
//  Created by 최지연/클라이언트 on 2023/06/09.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
