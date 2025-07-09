//
//  OpenBtnContactView.swift
//  backAppSui
//
//  Created by Daz N311 on 06.07.2025.
//

import SwiftUI

struct OpenBtnContactView: View {
  @Binding var isShowAuth: Bool
  var body: some View {
    VStack(alignment: .center) {
      Button("Авторизоваться") {
        isShowAuth.toggle()
      }
      .frame(maxWidth: .infinity)
      .buttonStyle(.borderedProminent)
      .tint(.mainGrey)
      .foregroundStyle(.white)
      .padding()
    }
  }
}

#Preview {
  @Previewable @State var isShowAuth: Bool = false
  OpenBtnContactView(isShowAuth: $isShowAuth)
    .preferredColorScheme(.dark)
}

#Preview(String(describing: "ContentView")){
  ContentView()
}
