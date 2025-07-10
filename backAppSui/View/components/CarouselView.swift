//
//  CarouselView.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI
import MapKit

struct CarouselView: View {
  var images: [ImageModel]
  var width: Double
  var caption: String
  @State var position: MapCameraPosition
  @Namespace var namespace
  
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      // Carousel
      LazyVStack(spacing: 15) {
        Carousel()
      }
      .safeAreaPadding(.vertical,6)
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
      TabView {
        ForEach(images) { model in
//          Tab(model.altText,systemImage: "heart.fill") {
            Image(model.image)
              .resizable()
              .aspectRatio(contentMode: .fill)
              .containerRelativeFrame(.horizontal)
              .frame(height:width)
              .clipShape(.rect(cornerRadius: 10))
              .toolbarBackgroundVisibility(.visible, for: .tabBar)
              .overlay(alignment: .topLeading) {
                Text(model.altText)
                  .padding([.leading,.bottom],5)
                  .padding(.trailing,8)
                  .background(.black.opacity(0.33))
                  .clipShape(.rect(bottomTrailingRadius: 10))
              }
              .overlay(alignment: .topTrailing) {
                NavigationLink {
                  MapDetailsView(
                    image:images[0],
                    caption: images[0].altText,
                    position: .camera(
                      MapCamera(
                        centerCoordinate: images[0].location,
                        distance: 1000,
                        heading: 250,
                        pitch: 80
                      )
                    )
                  )
                  .navigationTransition(.zoom(sourceID: 1, in: namespace))
                } label : {
                  Image(systemName: "globe.americas")
                    .imageScale(.large)
                    .font(.title3)
                    .shadow(color: .white, radius: 3)
                    .padding()
        //            .border(.red)
                }
                .matchedTransitionSource(id: 1, in: namespace)

              }
//          }
        }
      }
      .tabViewStyle(.page)
      .frame(width: width)
    }
    .frame(height:width)
    .scrollIndicators(.hidden)
    .scrollTargetBehavior(.viewAligned(limitBehavior: .always))
  }
}

#Preview(String(describing: "CarouselView")){
  NavigationStack {
    CarouselView(
      images:images1,
      width:400,
      caption: images1[0].altText,
      position: .camera(
        MapCamera(centerCoordinate: images1[0].location, distance: 3000)
      )
    )
  }
}

#Preview(String(describing: "PageThree")){
  PageThree(width: 400)
}

#Preview(String(describing: "ContentView")){
  ContentView()
}
