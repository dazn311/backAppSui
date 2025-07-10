//
//  PageSixView.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

struct PageSixView: View {
  var body: some View {
    VStack(alignment: .leading){
      HStack(alignment: .top,spacing: 0) {
        VStack(alignment: .leading,spacing: 6){
          Arrow()
            .stroke(.mainGrey, lineWidth: 4)
            .frame(width: 140, height: 25)
          
        }
        VStack(alignment: .leading){
          TitleViewGW(title1: "",title2: "консультация ")
          TitleViewWG(title1: "для собственников квартир",title2: "")
            .padding(.bottom,10)
          Divider()
          ListItemView(title1: "/01",title2: "помощь в расстановке мебели")
          ListItemView(title1: "/02",title2: "подбор оптимального стилевого решения")
          ListItemView(title1: "/03",title2: "консультация по организации")
          ListItemView(title1: "/04",title2: "помощь с комплектацией квартиры и прочее")
          HStack{
            PriceBlockView(title1: "онлайн",title2: "5 000₽")
            PriceBlockView(title1: "выезд на объект",title2: "7 000₽")
          }
          .padding(.top,10)
        }
      }
      .padding(.bottom,20)
    }
  }
}

#Preview(String(describing: "PageSixView")){
    PageSixView()
}
