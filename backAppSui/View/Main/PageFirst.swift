//
//  PageFirst.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI

struct PageFirst: View {
  var body: some View {
    Image(.title)
      .resizable()
    //                    .frame(width: 390)
    VStack(alignment: .leading) {
      Text("обновляем".uppercased())
        .font(type: .bold,size: 22)
        .foregroundColor(Color(.gray))
      Text("стандартные квартиры".uppercased())
        .font(type: .bold,size: 22)
        .foregroundColor(Color(.gray))
      
      HStack{
        Spacer()
        Text("в стильные и уютные".uppercased())
          .font(type: .bold,size: 22)
          .foregroundColor(.mainBlack)
      }
      HStack{
        Spacer()
        Text("пространства".uppercased())
          .font(type: .bold,size: 22)
          .foregroundColor(.mainBlack)
      }
      
      HStack{
        Spacer()
        Text("которые продаются и сдаются".uppercased())
          .font(type: .bold,size: 14)
          .foregroundColor(Color(.gray))
      }
      HStack{
        Spacer()
        Text("быстрее и дороже".uppercased())
          .font(type: .bold,size: 14)
          .foregroundColor(Color(.gray))
      }
      SendBtn()
      
      PageFirstBottom()
      
      
    }
  }
}

#Preview {
  PageFirst()
}
