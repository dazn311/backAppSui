//
//  ListItemView.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

//White & grey
struct ListItemView: View {
  var titles: Header
  
  var body: some View {
    HStack(alignment: .top,spacing: 10) {
      Text(titles.word1)
        .font(type: .regular,size: 14)
        .foregroundColor(Color(.mainGrey))
      Text(titles.word2)
        .multilineTextAlignment(.leading)
        .font(type: .regular,size: 14)
        .foregroundColor(Color(.mainBlack))
    }
    .padding(.horizontal,0)
  }
}
//title1: "Комплектация",title2: "под ключ")
//#Preview(String(describing: "ListItemView")){
//  ListItemView(titles: .init(from: Header.self as! Decoder))
//}
