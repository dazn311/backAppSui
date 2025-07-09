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
          ZStack(alignment: .leading) {
            PageHeader()
              .padding(.horizontal,0)
              .zIndex(1)
            Image(.titleBG)
              .centerCropped()
              .overlay() {
                LinearGradient(stops: [
                  Gradient.Stop(color: .clear, location: 0.8),
                  Gradient.Stop(color: .mainBG, location: 1),
                  
                ], startPoint: .top, endPoint: .bottom)
              }
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
      .padding(.horizontal,10)

      VStack(alignment: .trailing,spacing: 0) {
        HStack{
          Spacer()
          Text("в стильные решения".uppercased())
            .font(type: .bold,size: 22)
            .foregroundColor(.mainBlack)
            .multilineTextAlignment(.center)
        }
      }
//      .frame(width:400)
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
//    .offset(y:-44)
//    .padding(.horizontal,6)
    .preferredColorScheme(.dark)
//    .padding(.vertical,0)
  }
}

#Preview(String(describing: "PageFirst")){
  PageFirst()
}

#Preview(String(describing: "ContentView")){
  ContentView()
}
