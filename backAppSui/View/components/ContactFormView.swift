//
//  ContactFormView.swift
//  backAppSui
//
//  Created by Daz N311 on 06.07.2025.
//

import SwiftUI

struct ContactFormView: View {
  @Environment(\.dismiss) var dismiss
  var body: some View {
    Text("Авторизация")
      .font(.title)
      .foregroundStyle(.mainBlack)
    Button("Войти") {
      dismiss()
    }
    .buttonStyle(.borderedProminent)
    .tint(.mainGrey)
//    .font(.largeTitle)
    .foregroundStyle(.white)
    .padding()
  }
}

#Preview(String(describing: "ContactFormView")){
    ContactFormView()
    .preferredColorScheme(.dark)
}
