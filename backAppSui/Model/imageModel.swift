//
//  imageModel.swift
//  backAppSui
//
//  Created by Daz N311 on 02.07.2025.
//

import SwiftUI

struct ImageModel : Identifiable {
  var id: String = UUID().uuidString
  var altText: String
  var image: String
}

let images1: [ImageModel] = [
  .init(altText: "Mo Pic 1", image: "JKMitinskiiLes"),
  .init(altText: "Mo Pic 2", image: "JKMitinskiiLes2"),
  .init(altText: "Mo Pic 3", image: "JKMitinskiiLes3"),
  .init(altText: "Mo Pic 4", image: "JKMitinskiiLes4"),
]
let images2: [ImageModel] = [
  .init(altText: "Mo Pic 1", image: "JKKronshtatskii"),
  .init(altText: "Mo Pic 2", image: "JKKronshtatskii2"),
  .init(altText: "Mo Pic 3", image: "JKKronshtatskii3"),
  .init(altText: "Mo Pic 4", image: "JKKronshtatskii4"),
  .init(altText: "Mo Pic 4", image: "JKKronshtatskii5"),
  .init(altText: "Mo Pic 4", image: "JKKronshtatskii6"),
]
