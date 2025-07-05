//
//  ContentView.swift
//  backAppSui
//
//  Created by Daz N311 on 01.07.2025.
//

import SwiftUI

struct ContentView: View {
  @State var isShowAuth: Bool = false
  var body: some View {
    ScrollView {
      VStack(alignment: .leading,spacing: 30) {
//        PageHeader()
        PageFirst()
        PageSeconds()
        PageThree()
        PageFour()
        PageFiveView()
        PageSixView()
        OpenBtnContactView(isShowAuth: $isShowAuth)
      }
//      .padding(.horizontal,20)
    }
    .frame(maxWidth: .infinity)
    .background(.mainBG)
    .scrollIndicators(.hidden)
    .padding(.bottom)
    .sheet(isPresented: $isShowAuth) {
      ContactFormView()
    }
  }
}

#Preview {
  ContentView()
}


