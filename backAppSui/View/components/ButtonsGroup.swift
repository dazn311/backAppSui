//
//  ButtonsGroup.swift
//  backAppSui
//
//  Created by Daz N311 on 09.07.2025.
//

import SwiftUI

struct ButtonsGroup: View {
  @EnvironmentObject var userSettings: UserSettings
  @State var isShowAuth: Bool = false
  
  var body: some View {
    
    HStack(alignment: .top){
      Button {
        isShowAuth.toggle()
      } label: {
        Image(userSettings.user.avatar)
          .resizable()
          .frame(width: 60,height: 60)
          .grayscale(0.8999)
          .border(.mainBGIcon)
          .clipShape(Circle())
      }
      Spacer()
      VStack(spacing: 10){
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
      }
      
    }
    .padding(.horizontal,6)
    .sheet(isPresented: $isShowAuth) {
      AuthFormView()
    }
  }
}

#Preview(String(describing: "ButtonsGroup")) {
  ButtonsGroup()
    .environmentObject(UserSettings(user: .init(
      name: "User",
      password: "",
      lastName: "",
      phone: "",
      adress: "",
      accessesAdress: [],
      imagesObject: [],
      avatar: .user,
      status: .other)
    ))
}
