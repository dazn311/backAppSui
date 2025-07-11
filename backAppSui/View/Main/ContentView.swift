//
//  ContentView.swift
//  backAppSui
//
//  Created by Daz N311 on 01.07.2025.
//

import SwiftUI

struct ContentView: View {
  let dataArr:[PagePriceModel] = Prices().dataArr

  var body: some View {
    NavigationStack {
      GeometryReader { geo in
        ScrollViewReader { proxy in
          ScrollView {
            VStack(alignment: .leading,spacing: 30) {
              PageFirst(proxy:proxy)
              PageSeconds()
              PageThree(width: geo.size.width)
              
              Divider()
              
              ForEach(dataArr) {data in
                PricesPageView(data:data, width: geo.size.width)
              }
              .scrollIndicators(.hidden)
              .id(1)
              
              SendBtn()
            }
          }
          .frame(maxWidth: .infinity)
          .background(.mainBG)
          .scrollIndicators(.hidden)
          .padding(.bottom)
        }
        
      }
    }
  }
}

#Preview(String(describing: "ContentView")){
  ContentView()
    .environmentObject(UserSettings(user: .init(
      name: "User",
      password: "",
      lastName: "",
      phone: "",
      adress: "",
      accessesAdress: [],
      imagesObject: [],
      avatar: .user,
      status: .other)
    ))
//    .preferredColorScheme(.dark)
}


