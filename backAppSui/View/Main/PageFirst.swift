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
      HStack() {
        Image(.title)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(height:300)
          
      }
      .padding(.vertical,10)
      VStack(alignment: .leading,spacing: 0) {
        Text("реализуем".uppercased())
          .font(type: .bold,size: 22)
          .foregroundColor(Color(.gray))
        Text("дизайнерские проекты".uppercased())
          .font(type: .bold,size: 22)
          .foregroundColor(Color(.gray))
      }
      VStack(alignment: .trailing,spacing: 0) {
        HStack(){
          Text("в стильные и комфортные".uppercased())
            .font(type: .bold,size: 22)
            .foregroundColor(.mainBlack)
        }
        HStack{
          Spacer()
          Text("решения".uppercased())
            .font(type: .bold,size: 22)
            .foregroundColor(.mainBlack)
        }
      }
      .padding(.horizontal,10)
      
      
      VStack(alignment: .trailing,spacing: 0) {
        HStack{
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
      }
      .padding(.horizontal,10)
      SendBtn()
      PageFirstBottom()
    }
    .padding(.horizontal,6)
    .padding(.vertical,26)
  }
}

#Preview {
  ContentView()
}
