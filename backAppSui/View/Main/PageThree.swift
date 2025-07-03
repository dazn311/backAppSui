//
//  PageThree.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI

struct PageThree: View {
    var body: some View {
      
      VStack(alignment: .leading, spacing: 20) {
        VStack(alignment: .trailing) {
          HStack{
            Spacer()
            Text("Мои работы".uppercased())
            Text("говорять".uppercased())
              .foregroundColor(Color(.gray))
          }
          HStack{
            Text("сами за себя".uppercased())
              .foregroundColor(Color(.gray))
          }
        }
        .padding(.horizontal,0)
//        .background(Color.green.opacity(0.3))
        CarouselView(image:images1,caption: "Квартира / 42.2 кв.м/ бюджет 1.3 млн рублей")
        CarouselView(image:images2,caption: "Евродвушка с ремонтом от застройщика")
      }
      .padding(.horizontal,6)
//      .background(Color.red.opacity(0.3))
      
    }
}

#Preview {
  PageThree()
//  ContentView()
}
