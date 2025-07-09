//
//  ButtonBaseView.swift
//  backAppSui
//
//  Created by Daz N311 on 05.07.2025.
//

import SwiftUI

struct ButtonBaseView: View {
  var body: some View {
    Button("Done") {
      
    }
    .buttonStyle(.borderedProminent)
    .tint(.brown.mix(with: .black, by: 0.2))
    .font(.largeTitle)
    .foregroundStyle(.gray)
    .padding()
  }
}

#Preview(String(describing: "ButtonBaseView")){
    ButtonBaseView()
}
