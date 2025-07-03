//
//  PageFirstBottom.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//


import SwiftUI

struct PageFirstBottom : View {
  var body: some View {
    VStack(alignment: .center) {
      HStack{
        Spacer()
        VStack(alignment: .leading) {
          HStack{
            Text("Профессиональный хоумстейджинг".capitalized)
              .font(type: .bold,size: 14)
              .foregroundColor(Color(.gray))
          }
          
          HStack{
            Text("увеличивает стоимость объекта от 20%")
              .font(type: .bold,size: 14)
              .foregroundColor(Color(.gray))
          }
          HStack{
            Text("и ускоряет сделку в 3 раза")
              .font(type: .bold,size: 14)
              .foregroundColor(Color(.gray))
          }
        }
        Spacer()
      }
    }
    .padding(.horizontal, 0)
  }
}
#Preview {
  ContentView()
}
