//
//  TitleViewWG.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

//White & grey
struct TitleViewWG: View {
  var title1: String = "стоимость"
  var title2: String = "услуг"
  var body: some View {
    HStack(alignment: .top,spacing: 0) {
      Text(title1.uppercased())
        .font(type: .bold,size: 22)
        .tracking(2)
        .foregroundColor(Color(.mainGrey))
      Text(title2.uppercased())
        .font(type: .bold,size: 22)
        .tracking(2)
        .foregroundColor(Color(.mainBlack))
    }
    .padding(.horizontal,0)
  }
}

#Preview {
    TitleViewWG()
//  ContentView()
}
