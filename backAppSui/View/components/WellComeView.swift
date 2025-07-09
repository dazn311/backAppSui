//
//  WellComeView.swift
//  backAppSui
//
//  Created by Daz N311 on 09.07.2025.
//

import SwiftUI

struct WellComeView: View {
  var body: some View {
    HStack{
      Text("Welcome Back".capitalized)
        .font(type: .bold,size: 16)
        .foregroundColor(.black)
        .background(.white.opacity(0.5))
//        .foregroundColor(Color(hex: "CCC"))
    }
    .padding(.horizontal,6)
  }
}

#Preview {
    WellComeView()
}
