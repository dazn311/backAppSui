//
//  PricesPageView.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

struct PricesPageView: View {
  var data: PagePriceModel
  var width: Double
  
  var body: some View {
//      GeometryReader { geo in
        VStack(alignment: .leading){
          //h1
          TitleViewWG(title1: data.Header1.word1,title2: data.Header1.word2)
            .padding(.bottom,8)
          VStack(alignment: .trailing){
            
            VStack(alignment: .leading){
              //h2
              TitleVerticalView(
                title1: data.Header2.word1,
                title2: data.Header2.word2,
                foregroundColor1: .mainGrey,
                foregroundColor2: .mainBlack)
  //              .frame(maxWidth: .infinity, alignment: .trailing)

              //h3
              Text(data.HeaderDescription.word1)
                .font(type: .regular,size: 14)
                .foregroundColor(Color(.mainGrey))
              Divider()
              
              ForEach(data.ServiceList) { ocean in
                ListItemView(titles: ocean)
              }
              .scrollIndicators(.hidden)

              HStack{
                ForEach(data.priceAll) { titles in
                  PriceBlockView(title1: titles.word1,title2: titles.word2)
                }
                .scrollIndicators(.hidden)
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
  PricesPageView(data:Prices().dataArr[0],width: 300)
}

#Preview(String(describing: "ContentView")){
  ContentView()
}

//              ListItemView(titles: ListItemModel(title1: "Комплектация",title2: "под ключ"))
//              ListItemView(titles: ListItemModel(title1: "/00",title2: "замеры объекта"))
//              ListItemView(title1: "/01",title2: "планировочные решения всей квартиры")
//              ListItemView(title1: "/02",title2: "подбор всей мебели, техники и декора")
//              ListItemView(title1: "/03",title2: "визуализация в виде 2d-коллажей")
//              ListItemView(title1: "/04",title2: "просчет мебели на заказ (кухня, шкаф)")
//              ListItemView(title1: "/05",title2: "закупка и прием всех материалов на объекте")
//              ListItemView(title1: "/06",title2: "поиск и подбор всех мастеров, их контроль")
//              ListItemView(title1: "/07",title2: "авторское сопровождение и реализация")
//              ListItemView(title1: "/08",title2: "организация клининга, вынос мусора")
//              ListItemView(title1: "/09",title2: "стейджинг и фотосъемка объекта")
