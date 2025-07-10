//
//  PriceBlockView.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

//White & grey
struct PriceBlockView: View {
  var title1: String
  var title2: String
  var body: some View {
    VStack(alignment: .leading,spacing: 0) {
      Text(title1)
        .font(type: .regular,size: 14)
        .foregroundColor(Color(.mainGrey))
      Text(title2)
        .font(type: .regular,size: 14)
        .foregroundColor(Color(.mainBlack))
    }
    .padding(.horizontal,0)
  }
}

#Preview(String(describing: "PriceBlockView")){
  PriceBlockView(title1: "студия",title2: "210 000₽")
}
