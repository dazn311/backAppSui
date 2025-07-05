//
//  PageFirst.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI

struct PageFirst: View {
  var body: some View {

    VStack(alignment: .leading,spacing: 10) {
      Rectangle()
        .fill(Color(.clear))
        .frame(height:400)
        .overlay(
          ZStack {
            PageHeader()
              .padding(.horizontal,80)
              .zIndex(1)
            Image(.title)
              .resizable()
              .aspectRatio(contentMode: .fill)
           
          }
        )
      
      VStack(alignment: .leading,spacing: 0) {
        
//        TitleViewWG(title1: "реализуем")
        Text("реализуем".uppercased())
          .font(type: .bold,size: 22)
        Text("дизайнерские проекты".uppercased())
          .font(type: .bold,size: 22)
      }
      .foregroundStyle(.mainGrey)

      VStack(spacing: 0) {
        HStack{
//          Spacer()
          Text("в стильные решения".uppercased())
            .font(type: .bold,size: 22)
            .foregroundColor(.mainBlack)
            .multilineTextAlignment(.center)
        }
      }
      .padding(.horizontal,10)
      
      
      HStack{
        Spacer()
        Text("которые сдаются быстрее и дороже")
          .font(type: .regular,size: 14)
          .foregroundColor(.mainGrey)
      }
      .padding(.horizontal,10)
      SendBtn()
      PageFirstBottom()
    }
    .offset(y:-60)
    .padding(.horizontal,6)
//    .padding(.vertical,0)
  }
}

#Preview {
  PageFirst()
}

#Preview {
  ContentView()
}
