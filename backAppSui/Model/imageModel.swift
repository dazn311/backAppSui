//
//  imageModel.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI
import MapKit

struct ImagesArr : Identifiable, Hashable {
//  var id: String = UUID().uuidString
  var data: [ImageModel]
  var id: String {
          return UUID().uuidString
      }
}

struct ImageModel : Identifiable, Hashable {
  var id: String = UUID().uuidString
  var altText: String
  var image: ImageResource
  var latitude: Double
  var longitude: Double
  
  var location: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
}
//55.861251, 37.377093
let images1: [ImageModel] = [
  .init(altText: "ЖК Митинский лес", image: .jkMitinskiiLes,latitude: 55.861251, longitude: 37.377093),
  .init(altText: "ЖК Митинский лес", image: .jkMitinskiiLes2,latitude: 55.861251, longitude: 37.377093),
  .init(altText: "ЖК Митинский лес", image: .jkMitinskiiLes3,latitude: 55.861251, longitude: 37.377093),
  .init(altText: "ЖК Митинский лес", image: .jkMitinskiiLes4,latitude: 55.861251, longitude: 37.377093),
]
//55.841818, 37.496940
let images2: [ImageModel] = [
  .init(altText: "ЖК Кронштатский", image: .jkKronshtatskii,latitude: 55.841818, longitude: 37.496940),
  .init(altText: "ЖК Кронштатский", image: .jkKronshtatskii2,latitude: 55.841818, longitude: 37.496940),
  .init(altText: "ЖК Кронштатский", image: .jkKronshtatskii3,latitude: 55.841818, longitude: 37.496940),
  .init(altText: "ЖК Кронштатский", image: .jkKronshtatskii4,latitude: 55.841818, longitude: 37.496940),
  .init(altText: "ЖК Кронштатский", image: .jkKronshtatskii5,latitude: 55.841818, longitude: 37.496940),
  .init(altText: "ЖК Кронштатский", image: .jkKronshtatskii6,latitude: 55.841818, longitude: 37.496940),
]

let imagesArr:[ImagesArr] = [
  .init(data:images1),
  .init(data:images2)
]

