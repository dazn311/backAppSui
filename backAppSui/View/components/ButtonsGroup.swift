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
  var proxy: ScrollViewProxy
  
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
      Button {
        withAnimation {
          proxy.scrollTo(1, anchor: .trailing)
        }
      } label: {
        ZStack{
          Circle()
            .fill(Color(.mainBGIcon))
            .frame(width: 40,height: 40)
          Image(systemName: "dollarsign.circle")
            .resizable()
            .frame(width: 20,height: 20)
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
  GeometryReader { geo in
    ScrollViewReader { proxy in
      ButtonsGroup(proxy:proxy)
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
  }
}
