//
//  MenuSuggestionSectionView.swift
//  CafeApp
//
//  Created by 최지연/클라이언트 on 2023/06/08.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(CoffeeMenu.sample) { menu in
                    MenuSuggestionItemView(coffeeMenu: menu)
                }
            }
            .padding(.horizontal, 16.0)
        }
    }
}

struct MenuSuggestionItemView: View {
    let coffeeMenu: CoffeeMenu

    var body: some View {
        VStack {
            coffeeMenu.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 100.0, height: 100.0)
            Text(coffeeMenu.name)
                .font(.caption)
        }
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView()
    }
}
