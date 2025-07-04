//
//  PageHeader.swift
//  backAppSui
//
//  Created by Daz N311 on 01.07.2025.
//

import SwiftUI

struct PageHeader: View {
  var body: some View {
    VStack(alignment: .leading,spacing: 4) {
      ButtonsGroup()
      WellComeView()
    }
  }
}

#Preview {
//  PageHeader()
  ContentView()
}

struct ButtonsGroup: View {
  var body: some View {
    HStack{
      Button {
        
      } label: {
        Image(.avatar60)
          .resizable()
          .frame(width: 60,height: 60)
          .clipShape(Circle())
      }
      Spacer()
      HStack(spacing: 10){
        Button {
          
        } label: {
          ZStack{
            Circle()
              .fill(Color(.mainBGIcon))
              .frame(width: 40,height: 40)
            Image(systemName: "magnifyingglass")
              .resizable()
              .frame(width: 20,height: 20)
          }
          
        }
        Button {
          
        } label: {
          ZStack{
            Circle()
              .fill(Color(.mainBGIcon))
              .frame(width: 40,height: 40)
            Image(systemName: "bell")
              .resizable()
              .frame(width: 20,height: 20)
          }
        }
      }
    }
    .padding(.horizontal,6)
  }
}

struct WellComeView: View {
  var body: some View {
    HStack{
      Text("Welcome Back".capitalized)
        .font(type: .bold,size: 16)
        .foregroundColor(Color(hex: "CCC"))
    }
    .padding(.horizontal,6)
  }
}
