//
//  CarouselView.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI

struct CarouselView: View {
  var image: [ImageModel]
  var caption: String
  
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      HStack{
        Text(caption)
      }
      .padding(.horizontal,10)
      LazyVStack(spacing: 15) {
        Carousel()
      }
      .safeAreaPadding(6)
    }
    
  }
  @ViewBuilder
  func HeaderView() -> some View {
    HStack{
      Image(systemName: "xbox.logo")
    }
  }
  
  @ViewBuilder
  func Carousel() -> some View {
//    let spacing: CGFloat = 6
    ScrollView(.horizontal) {
      LazyHStack {
        ForEach(image) { model in
          Image(model.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .containerRelativeFrame(.horizontal)
            .frame(height:400)
            .clipShape(.rect(cornerRadius: 10))
//            .shadow(color: .black.opacity(0.4),radius: 5,x:1,y:1)
        }
      }
      .scrollTargetLayout()
    }
    .frame(height:400)
    .scrollIndicators(.hidden)
    .scrollTargetBehavior(.viewAligned(limitBehavior: .always))
  }
}

#Preview {
//  CarouselView(image:images1)
  PageThree()
//  ContentView()
}
