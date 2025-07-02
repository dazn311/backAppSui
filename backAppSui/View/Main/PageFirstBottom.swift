//
//  PageFirstBottom.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//


import SwiftUI

struct PageFirstBottom : View {
  var body: some View {
    VStack(alignment: .leading) {
      HStack{
        Text("Профессиональный хоумстейджинг".capitalized)
          .font(type: .bold,size: 14)
          .foregroundColor(Color(.gray))
      }
      .padding(.horizontal,20)
      
      HStack{
        Text("увеличивает стоимость объекта от 20%")
          .font(type: .bold,size: 14)
          .foregroundColor(Color(.gray))
      }
      .padding(.horizontal,20)
      HStack{
        Text("и ускоряет сделку в 3 раза \(UIScreen.main.bounds.width/2 - 100)")
          .font(type: .bold,size: 14)
          .foregroundColor(Color(.gray))
      }
      .padding(.horizontal,20)
      
    }
    .position(x: UIScreen.main.bounds.width / 2)
  }
}
