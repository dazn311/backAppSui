//
//  PageFour.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

struct PageFour: View {
    var body: some View {
      VStack(alignment: .leading){
        TitleViewWG(title1: "стоимость",title2: "услуг")
        
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],alignment: .trailing) {
          Text("")

          TitleViewGW(title1: "Комплектация",title2: "")
            .frame(minWidth:230)

          Text("")

          TitleViewGW(title1: "",title2: "\"под ключ\"")
            .frame(minWidth:230)
          Text("")

          Text("Для тех, кто инвестировал в недвижимость и хочет получить\n готовую квартиру")
            .font(type: .regular,size: 14)
            .frame(minWidth:230)
            .foregroundColor(Color(.mainGrey))

          Text("")

          Text("для быстрой и эффективной сдачи в аренду или продажи")
            .font(type: .regular,size: 14)
            .frame(minWidth:230)
            .foregroundColor(Color(.mainBlack))
            .padding(.bottom,10)
          
          Text("")

          ListItemView(title1: "/00", title2: "замеры объекта")
            .frame(minWidth:230)
            
          Text("")

          ListItemView(title1: "/01",)
            .frame(minWidth:230)
        }
//        .padding(30)

        HStack(alignment: .top,spacing: 0) {
          VStack(alignment: .leading,spacing: 6){
            TitleViewWG(title1: "стоимость ",title2: "")
              .padding(.bottom,15)
            Arrow()
              .stroke(.mainGrey, lineWidth: 4)
              .frame(width: 140, height: 10)
            
//            Image(systemName: "arrow.right")
//              .resizable()
//              .frame(width: 140, height: 10)
          }
          VStack(alignment: .leading){
            TitleViewWG(title1: "",title2: "услуг")
              .padding(.bottom,7)
            TitleViewGW(title1: "Комплектация",title2: "")
              .offset(x:-10)
//              .padding(.horizontal,0)
            TitleViewGW(title1: "",title2: "\"под ключ\"")
              .padding(.bottom,10)
            Text("Для тех, кто инвестировал в недвижимость")
              .font(type: .regular,size: 14)
              .foregroundColor(Color(.mainGrey))
            HStack{
              Text("и хочет получить готовую квартиру")
                .font(type: .regular,size: 14)
                .foregroundColor(Color(.mainGrey))
              Text("для")
                .font(type: .regular,size: 14)
                .foregroundColor(Color(.mainBlack))
            }
            Text("быстрой и эффективной сдачи в аренду или продажи")
              .font(type: .regular,size: 14)
              .foregroundColor(Color(.mainBlack))
              .padding(.bottom,10)
            ListItemView(title1: "/00", title2: "замеры объекта")
            ListItemView(title1: "/01",)
            ListItemView(title1: "/02",title2: "подбор всей мебели, техники и декора")
            ListItemView(title1: "/03",title2: "визуализация в виде 2d-коллажей")
            ListItemView(title1: "/04",title2: "просчет мебели на заказ (кухня, шкаф)")
            ListItemView(title1: "/05",title2: "закупка и прием всех материалов на объекте")
            ListItemView(title1: "/06",title2: "поиск и подбор всех мастеров, их контроль")
            ListItemView(title1: "/07",title2: "авторское сопровождение и реализация")
            ListItemView(title1: "/08",title2: "организация клининга, вынос мусора")
            ListItemView(title1: "/09",title2: "стейджинг и фотосъемка объекта")
            HStack{
              PriceBlockView()
              PriceBlockView(title1: "евродвушка",title2: "240 000₽")
              PriceBlockView(title1: "евротрешка",title2: "260 000₽")
            }
            .padding(.top,10)
          }
        }
        SendBtn()
        Text("*стоимость по другим планировкам рассчитывается индивидуально")
          .font(type: .regular,size: 14)
          .foregroundColor(Color(.mainGrey))
          .padding(.bottom,10)
      }
      .preferredColorScheme(.dark)
    }
}

#Preview(String(describing: "PageFour")){
  ScrollView{
    PageFour()
  }
  .scrollIndicators(.hidden)
}
