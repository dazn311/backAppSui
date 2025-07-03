//
//  SendBtn.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI

struct SendBtn: View {
  var body: some View {
    HStack{
      Button {
        
      } label: {
        ZStack{
          Rectangle()
            .fill(Color(hex: "F9F9F9"))
            .containerRelativeFrame(.vertical, count: 100, span: 5, spacing: 0)
          HStack {
            Spacer()
            Image(systemName: "paperplane.circle.fill")
            Text("Обсудить сотрудничество")
              .font(type: .regular,size: 16)
              .foregroundColor(Color(hex: "000"))
            Spacer()
          }
        }
      }
    }
    .padding(.vertical,0)
  }
}
#Preview {
  ContentView()
}
