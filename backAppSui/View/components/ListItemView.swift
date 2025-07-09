//
//  ListItemView.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

//White & grey
struct ListItemView: View {
  var title1: String = "/01"
  var title2: String = "планировочные решения всей квартиры"
  var body: some View {
    HStack(alignment: .top,spacing: 10) {
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

#Preview(String(describing: "ListItemView")){
    ListItemView()
}
