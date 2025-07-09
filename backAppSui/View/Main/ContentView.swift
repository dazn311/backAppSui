//
//  ContentView.swift
//  backAppSui
//
//  Created by Daz N311 on 01.07.2025.
//

import SwiftUI

struct ContentView: View {
  @State private var images: [ImagesArr] = imagesArr
  
  var body: some View {
    NavigationStack {
      ScrollView {
        VStack(alignment: .leading,spacing: 30) {
          PageFirst()
          PageSeconds()
          PageThree()
          PageFour()
          PageFiveView()
          PageSixView()
        }
      }
      .frame(maxWidth: .infinity)
      .background(.mainBG)
      .scrollIndicators(.hidden)
      .padding(.bottom)
    }
  }
}

#Preview(String(describing: "ContentView")){
  ContentView()
    .preferredColorScheme(.dark)
}


