//
//  PageSeconds.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI

struct PageSeconds: View {
    var body: some View {

      VStack(alignment: .leading,spacing: 0) {
        ZStack{
          HStack {
            Image(.avatar2)
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width: 160,height: 160)
              .contentShape(.circle)
              .clipShape(.circle)
              .padding(.horizontal,10)
              .zIndex(1)
            Spacer()
          }
          .padding(.horizontal,10)
          VStack(alignment: .leading,spacing: 0) {
            Rectangle()
              .fill(Color(.clear))
              .frame(height:100)
            Rectangle()
              .fill(Color(.gray.opacity(0.2)))
              .frame(height:130)
          }
        }
        VStack(alignment: .leading,spacing: 0) {
          Text("Меня зовут".uppercased())
            .font(type: .bold,size: 22)
            .foregroundColor(Color(.mainBlack))
          
          Text("Наталия".uppercased())
            .font(type: .bold,size: 22)
            .foregroundColor(Color(.mainBlack))
          
          HStack{
            Text("В этой сфере только год")
              .font(type: .bold,size: 14)
              .foregroundColor(Color(.gray))
            Spacer()
          }
          HStack{
            Text("но уже есть успехи в хоумстейджинге")
              .font(type: .bold,size: 14)
              .foregroundColor(Color(.gray))
          }
          
          HStack{
            Image(systemName: "square.and.pencil")
            Text("Мною реализовано более 3-х успешных проекта")
              .font(type: .bold,size: 14)
              .foregroundColor(Color(.gray))
          }
          .padding(.horizontal,20)
          .padding(.vertical,5)
          HStack{
            Image(systemName: "square.and.pencil")
            Text("Предлагаю решения, которые максимально отвечают вашим целям и избегают лишних затрат")
              .fixedSize(horizontal: false, vertical: true)
              .font(type: .bold,size: 14)
              .foregroundColor(Color(.gray))
          }
          .padding(.horizontal,20)
          .padding(.vertical,5)
          HStack{
            Image(systemName: "square.and.pencil")
            Text("Работаю совместно со Светой, известной хомстейджер в Москве")
              .fixedSize(horizontal: false, vertical: true)
              .font(type: .bold,size: 14)
              .foregroundColor(Color(.gray))
            Image(systemName: "paperplane.circle.fill")
              .foregroundColor(Color.blue)
          }
          .padding(.horizontal,20)
          .padding(.vertical,5)
      }
        .padding(.horizontal,10)
        .padding(.vertical,10)
        .overlay(
            Rectangle()
              .fill(Color.gray.opacity(0.2))
//              .offset(y:140)
        )
          
        }
        .padding(.bottom,10)
        .padding(.horizontal,10)
        
    }
}

#Preview(String(describing: "PageSeconds")){
  PageSeconds()
}
#Preview(String(describing: "ContentView")){
  ContentView()
}
