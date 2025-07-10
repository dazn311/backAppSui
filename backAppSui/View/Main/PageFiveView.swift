//
//  PageFiveView.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

struct PageFiveView: View {
    var body: some View {
      VStack(alignment: .leading){
//        TitleViewWG(title1: "стоимость",title2: "услуг")
        HStack(alignment: .top,spacing: 0) {
          VStack(alignment: .leading,spacing: 6){
//            TitleViewWG(title1: "стоимость ",title2: "")
//              .padding(.bottom,15)
            Arrow()
              .stroke(.mainGrey, lineWidth: 4)
              .frame(width: 140, height: 25)
            
          }
          VStack(alignment: .leading){
            TitleViewGW(title1: "",title2: "онлайн-проект")
              .padding(.bottom,10)
            Text("Для тех, кто готов самостоятельно")
              .font(type: .regular,size: 14)
              .foregroundColor(Color(.mainGrey))
            Text("реализовывать проект")
              .font(type: .regular,size: 14)
              .foregroundColor(Color(.mainGrey))
              .padding(.bottom,10)
            Divider()
//            ListItemView(title1: "/01",title2: "планировочное решение всей квартиры")
//            ListItemView(title1: "/02",title2: "подбор всей мебели, техники и декора")
//            ListItemView(title1: "/03",title2: "визуализация в виде 2d-коллажей")
//            ListItemView(title1: "/04",title2: "просчет мебели на заказ (кухня, шкаф)")
            HStack{
              PriceBlockView(title1: "студия",title2: "70 000₽")
              PriceBlockView(title1: "евродвушка",title2: "90 000₽")
              PriceBlockView(title1: "евротрешка",title2: "100 000₽")
            }
            .padding(.top,10)
          }
        }
        .padding(.bottom,20)
//        SendBtn()
        Text("*стоимость по другим планировкам рассчитывается индивидуально")
          .font(type: .regular,size: 14)
          .foregroundColor(Color(.mainGrey))
          .padding(.bottom,10)
      }
    }
}

#Preview(String(describing: "PageFiveView")){
    PageFiveView()
}
