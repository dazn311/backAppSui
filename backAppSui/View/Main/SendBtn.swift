//
//  SendBtn.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI

struct SendBtn: View {
  var caption: String = "Обсудить сотрудничество"
  var url: String = "https://t.me/homeupakovka"
  var body: some View {
    ZStack{
      Rectangle()
        .fill(Color(hex: "F9F9F9"))
        .containerRelativeFrame(.vertical, count: 100, span: 5, spacing: 0)
      HStack {
        Spacer()
        Image(systemName: "paperplane.circle.fill")
          .foregroundStyle(.blue)
        Link("\(caption)",
              destination: URL(string: url)!)
        .font(type: .bold,size: 16)
        .foregroundStyle(.gray)
        Spacer()
      }
      .padding(.vertical,0)
    }
  }
}
#Preview {
//  ContentView()
  SendBtn()
}
