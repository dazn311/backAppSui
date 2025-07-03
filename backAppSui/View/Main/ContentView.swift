//
//  ContentView.swift
//  backAppSui
//
//  Created by Daz N311 on 01.07.2025.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView {
      VStack(alignment: .leading,spacing: 0) {
        PageHeader()
        PageFirst()
        PageSeconds()
        PageThree()
      }
//      .padding(.horizontal,20)
    }
    .frame(maxWidth: .infinity)
    .background(.mainBG)
    .scrollIndicators(.hidden)
  }
}

#Preview {
  ContentView()
}


