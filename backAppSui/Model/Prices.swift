//
//  Prices.swift
//  backAppSui
//
//  Created by Daz N311 on 10.07.2025.
//
import Foundation

class Prices {
  var dataArr: [PagePriceModel] = []
  
  init() {
    decodePriceDat()
  }
  
  func decodePriceDat() {
    if let url = Bundle.main.url(forResource: "samplePagePrice", withExtension: "json") {
      do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        dataArr = try decoder.decode([PagePriceModel].self, from: data)
        
      } catch {
        print("Error: \(error)")
      }
    }
  }
}
