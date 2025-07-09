//
//  MapDetailsView.swift
//  backAppSui
//
//  Created by Daz N311 on 08.07.2025.
//

import SwiftUI
import MapKit

struct MapDetailsView: View {
  var image: ImageModel
  var caption: String
  @State var position: MapCameraPosition
  @State var satellite = false

    var body: some View {
      Map(position: $position) {
        Annotation(caption,coordinate: image.location) {
          Image(systemName: "mappin.and.ellipse")
            .imageScale(.large)
            .symbolEffect(.pulse)
        }
      }
      .mapStyle(satellite ? .imagery(elevation: .realistic): .standard(elevation: .realistic))
      .overlay(alignment: .bottomTrailing) {
        Button {
          satellite.toggle()
        } label: {
          Image(systemName: satellite
                ? "globe.americas.fill"
                : "globe.americas")
          .font(.largeTitle)
          .imageScale(.large)
          .padding(3)
          .background(.ultraThinMaterial)
          .clipShape(.rect(cornerRadius: 7))
          .shadow(radius: 3)
          .padding()
        }
      }
      .toolbarBackground(.automatic)
    }
}

#Preview(String(describing: "MapDetailsView")){
  NavigationStack {
    MapDetailsView(
      image:images1[0],
      caption: images1[0].altText,
      position: .camera(
        MapCamera(
          centerCoordinate: images1[0].location,
          distance: 2000,
          heading: 250,
          pitch: 80
        )
      )
    )
  }
}
