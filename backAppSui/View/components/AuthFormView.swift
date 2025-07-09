//
//  AuthFormView.swift
//  backAppSui
//
//  Created by Daz N311 on 06.07.2025.
//

import SwiftUI

struct AuthFormView: View {
  enum Field: Hashable {
          case username
          case password
      }
  
  @EnvironmentObject private var userSettings: UserSettings
  @Environment(\.dismiss) var dismiss
  @State private var username = ""
  @State private var password = ""

  @FocusState private var emailFieldIsFocused: Bool
  @FocusState private var focusedField: Field?
  
  func handleLogin(_ username: String,_ password: String) {
    userSettings.upd(username: username, password: password)
  }
  
  var body: some View {

    Text("Авторизация")
      .font(.title)
      .foregroundStyle(.mainBlack)
    Form {
      TextField("Username", text: $username)
          .focused($focusedField, equals: .username)
      SecureField("Password", text: $password)
          .focused($focusedField, equals: .password)
      Button("Sign In") {
          if username.isEmpty {
              focusedField = .username
          } else if password.isEmpty {
              focusedField = .password
          } else {
              handleLogin(username, password)
            dismiss()
          }
      }
    }
  }
}

#Preview(String(describing: "AuthFormView")){
  AuthFormView()
//    .preferredColorScheme(.dark)
}

