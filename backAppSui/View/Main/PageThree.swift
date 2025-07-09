//
//  PageThree.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI
import MapKit


struct PageThree: View {
  @State var imagesArr2: [ImagesArr] = imagesArr
  
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
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
          
          ForEach(imagesArr2) { images in
            CarouselView(images:images.data,caption: images.data[0].altText,position: .camera(
              MapCamera(
                centerCoordinate: images.data[0].location,
                distance: 3000,
                heading: 0,
                pitch: 80)
            ))
          }
          
        }
        .padding(.horizontal,6)
        
        SendBtn(caption: "Смотреть больше работ")

    }
}

#Preview(String(describing: "PageThree")){
  PageThree()
}

#Preview(String(describing: "ContentView")){
  ContentView()
}
