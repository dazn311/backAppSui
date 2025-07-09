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
  var caption: String
  @State var position: MapCameraPosition
  @Namespace var namespace
  
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      // Current location

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
        Map(position: $position) {
          Annotation(caption,coordinate: images[0].location) {
            Image(systemName: "mappin.and.ellipse")
              .imageScale(.large)
              .symbolEffect(.pulse)
          }
          .annotationTitles(.hidden)
        }
        .frame(height:100)
        .clipShape(.rect(cornerRadius: 15))
        .overlay(alignment: .trailing) {
          Image(systemName: "greaterthan")
            .imageScale(.large)
            .font(.title3)
            .shadow(color: .white, radius: 3)
            .padding(.trailing,5)
//            .border(.red)
        }
        .overlay(alignment: .topLeading) {
          Text(caption)
            .padding([.leading,.bottom],5)
            .padding(.trailing,8)
            .background(.black.opacity(0.33))
            .clipShape(.rect(bottomTrailingRadius: 10))
        }
        
        .clipShape(.rect(cornerRadius: 10))
      }
      .matchedTransitionSource(id: 1, in: namespace)
//    }
//    .navigationTitle("daz")
      // Carousel
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
        ForEach(images) { model in
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

#Preview(String(describing: "CarouselView")){
  NavigationStack {
    CarouselView(
      images:images1,
      caption: images1[0].altText,
      position: .camera(
        MapCamera(centerCoordinate: images1[0].location, distance: 3000)
      )
    )
  }
}

#Preview(String(describing: "PageThree")){
  PageThree()
}

#Preview(String(describing: "ContentView")){
  ContentView()
}
