//
//  PageHeader.swift
//  backAppSui
//
//  Created by Daz N311 on 01.07.2025.
//

import SwiftUI

struct PageHeader: View {
  var body: some View {
    VStack(alignment: .leading,spacing: 3) {
      ButtonsGroup()
//      WellComeView()
      Spacer()
    }
    .padding(.top,50)
//    .preferredColorScheme(.dark)
  }
}

#Preview(String(describing: "ContentView")) {
  ContentView()
}

#Preview(String(describing: "PageHeader")) {
  PageHeader()
}

