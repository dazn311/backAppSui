//
//  PagePriceModel.swift
//  backAppSui
//
//  Created by Daz N311 on 10.07.2025.
//

import SwiftUI
//: Identifiable, Hashable
struct PagePriceModel:Decodable, Identifiable  {
//  var id: String = UUID().uuidString
  var id: Int
  var Header1: Header
  var Header2: Header
  var HeaderDescription: Header
  var ServiceList: [Header]
  var priceAll: [Header]
  
}
struct Header : Decodable, Identifiable {
  var id: Int
  var word1: String
  var word2: String
  var color1: String
  var color2: String
  var isHorizontal: Bool
}
