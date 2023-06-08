//
//  MainTabView.swift
//  CafeApp
//
//  Created by 최지연/클라이언트 on 2023/06/02.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            Text("Other")
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.textItem
                }
        }
    }
}

//struct MainTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainTabView()
//    }
//}




// -------------------------------------------------------
// Reuse 차이 - Cell 의 재사용 여부와 정도에 따라 구분된다.

// HStack
// 초기화 시점에 모든 뷰를 한꺼번에 그리기 때문에 메모리 적으로 낭비라고 할 수 있다. 퍼포먼스 적으로 좋지 않다.
// 자동으로 맞춰서 크기가 줄어든다. 단 10개 이상 넣으면 컴파일 에러남.
struct SampleHStack: View {
    var body: some View {
        ScrollView(.horizontal) { // 스크롤뷰 넣어주면 한줄 처리됨. 기본 .vertical
            HStack {
                Text("HStack ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ")
                Text("HStack ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ")
                Text("HStack ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ")
                Text("HStack ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ")
                Text("HStack ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ")
                Text("HStack ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ")
                Text("HStack ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ")
                Text("HStack ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ")
                Text("HStack ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ")
                Text("HStack ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ")
            }
        }
    }
}

//struct SampleHStack_Previews: PreviewProvider {
//    static var previews: some View {
//        SampleHStack()
//    }
//}


// LazyHStack
// 초기화 시점에 모든 Cell 을 생성하지 않음. 최대 index 31 까지의 데이터의 Cell을 생성.
struct SampleLazyHStack: View {
    struct Number: Identifiable {
        let value: Int
        var id: Int { value }
    }

    let numbers: [Number] = (0...100).map { Number(value: $0) }

    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
        }
    }
}

//struct SampleLazyHStack_Previews: PreviewProvider {
//    static var previews: some View {
//        SampleLazyHStack()
//    }
//}

struct SampleLazyHGridView: View {
    struct Number: Identifiable {
        let value: Int
        var id: Int { value }
    }

    let numbers: [Number] = (0...100).map { Number(value: $0) }

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [ // 3줄
                        GridItem(.fixed(20)), // 높이
                        GridItem(.fixed(10)),
                        GridItem(.fixed(50))]
            ) {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
        }
    }
}

//struct SampleLazyHGrid_Previews: PreviewProvider {
//    static var previews: some View {
//        SampleLazyHGridView()
//    }
//}


// List
// 초기화 시점에 모든 Cell 을 생성하지 않음. UITableView 와 비슷. 보여질 필요가 있는 Cell 만 생성.
// Cell 의 삭제/추가 기능이 있다.
struct SampleListView: View {
    struct Number: Identifiable {
        let value: Int
        var id: Int { value }
    }

    let numbers: [Number] = (0...100).map { Number(value: $0) }

    var body: some View {
        List {
            ForEach(numbers) { number in
                Text("\(number.value)")
            }
        }
    }
}

//struct SampleList_Previews: PreviewProvider {
//    static var previews: some View {
//        SampleListView()
//    }
//}

struct SampleSectionListView: View {
    struct Number: Identifiable {
        let value: Int
        var id: Int { value }
    }

    let numbers: [Number] = (0...100).map { Number(value: $0) }

    var body: some View {
        List {
            Section(header: Text("Header")) {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }

            Section(header: Text("SecondHeader")) {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
        }
    }
}

struct SampleSectionList_Previews: PreviewProvider {
    static var previews: some View {
        SampleSectionListView()
    }
}
// -------------------------------------------------------
