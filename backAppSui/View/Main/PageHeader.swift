//
//  PageHeader.swift
//  backAppSui
//
//  Created by Daz N311 on 01.07.2025.
//

import SwiftUI

struct PageHeader: View {
  var proxy: ScrollViewProxy
  var body: some View {
    VStack(alignment: .leading,spacing: 3) {
      ButtonsGroup(proxy: proxy)
//      WellComeView()
      Spacer()
    }
    .padding(.top,50)
//    .preferredColorScheme(.dark)
  }
}

#Preview(String(describing: "ContentView")) {
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
}

#Preview(String(describing: "PageHeader")) {
  GeometryReader { geo in
    ScrollViewReader { proxy in
      PageHeader(proxy:proxy)
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
    }
  }
}

