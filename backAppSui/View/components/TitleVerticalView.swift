//
//  TitleVerticalView.swift
//  backAppSui
//
//  Created by Daz N311 on 10.07.2025.
//

import SwiftUI

struct TitleVerticalView: View {
  var title1: String
  var title2: String
  var foregroundColor1: Color
  var foregroundColor2: Color
  var body: some View {
    VStack(alignment: .leading,spacing: 0) {
      
      Text(title1.uppercased())
        .font(type: .bold,size: 20)
        .tracking(2)
        .foregroundColor(foregroundColor1)
      Text(title2.uppercased())
        .font(type: .bold,size: 20)
        .tracking(2)
        .foregroundColor(foregroundColor2)
    }
  }
}

#Preview {
  TitleVerticalView(
    title1: "Комплектация",
    title2: "под ключ",
    foregroundColor1: .mainGrey,
    foregroundColor2: .mainBlack)
}
