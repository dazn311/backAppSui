//
//  PricesPageView.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

struct PricesPageView: View {
  var width: Double
    var body: some View {
//      GeometryReader { geo in
        VStack(alignment: .leading){
          //h1
          TitleViewWG(title1: "стоимость",title2: "услуг")
            .padding(.bottom,8)
          VStack(alignment: .trailing){
            
            VStack(alignment: .leading){
              //h2
              TitleVerticalView(
                title1: "Комплектация",
                title2: "под ключ",
                foregroundColor1: .mainGrey,
                foregroundColor2: .mainBlack)
  //              .frame(maxWidth: .infinity, alignment: .trailing)
              
              
              //h3
              Text("Для тех, кто инвестировал в недвижимость и хочет получить готовую квартиру для быстрой и эффективной сдачи в аренду или продажи")
                .font(type: .regular,size: 14)
//                .frame(maxWidth: geo.size.width / 1.4, alignment: .trailing)
                .foregroundColor(Color(.mainGrey))
              Divider()
              ListItemView(title1: "/00", title2: "замеры объекта")
              ListItemView(title1: "/01")
              ListItemView(title1: "/02",title2: "подбор всей мебели, техники и декора")
              ListItemView(title1: "/03",title2: "визуализация в виде 2d-коллажей")
              ListItemView(title1: "/04",title2: "просчет мебели на заказ (кухня, шкаф)")
              ListItemView(title1: "/05",title2: "закупка и прием всех материалов на объекте")
              ListItemView(title1: "/06",title2: "поиск и подбор всех мастеров, их контроль")
              ListItemView(title1: "/07",title2: "авторское сопровождение и реализация")
              ListItemView(title1: "/08",title2: "организация клининга, вынос мусора")
              ListItemView(title1: "/09",title2: "стейджинг и фотосъемка объекта")
              HStack{
                PriceBlockView(title1: "студия",title2: "210 000₽")
                PriceBlockView(title1: "евродвушка",title2: "240 000₽")
                PriceBlockView(title1: "евротрешка",title2: "260 000₽")
              }
              .padding(.top,10)
            }
            .frame(maxWidth: width / 1.2, alignment: .trailing)
          }
          .frame(maxWidth: width, alignment: .trailing)
        }
        .padding(8)
//      }
    }
}

#Preview(String(describing: "PricesPageView")){
  PricesPageView(width: 300)
}

#Preview(String(describing: "ContentView")){
  ContentView()
}

