//
//  HomeView.swift
//  CafeApp
//
//  Created by 최지연/클라이언트 on 2023/06/09.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()

    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
            MenuSuggestionSectionView(coffeeMenu: $viewModel.coffeeMenu)
            Spacer(minLength: 32.0)
            EventsSectionView(events: $viewModel.events)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
