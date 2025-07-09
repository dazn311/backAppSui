//
//  TitleViewGW.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

struct TitleViewGW: View {
  var title1: String = "стоимость"
  var title2: String = "услуг"
  var body: some View {
    HStack(alignment: .top,spacing: 0) {
      HStack(alignment: .top,spacing: 10) {
        Text(title2.uppercased())
          .font(type: .bold,size: 22)
//          .font(.title)
          .tracking(2)
          .foregroundColor(Color(.mainBlack))
        Text(title1.uppercased())
          .font(type: .bold,size: 22)
          .tracking(2)
          .foregroundColor(Color(.mainGrey))
      }
    }
  }
}

#Preview(String(describing: "TitleViewGW")){
    TitleViewGW()
//  ContentView()
}
