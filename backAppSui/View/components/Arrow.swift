//
//  Arrow.swift
//  backAppSui
//
//  Created by Daz N311 on 03.07.2025.
//

import SwiftUI

struct Arrow: Shape {
  func path(in rect: CGRect) -> Path {
      var path = Path()
      let headLength: CGFloat = rect.width * 0.3 // Относительная длина головки стрелки
      let shaftWidth: CGFloat = rect.width * 0.1 // Относительная ширина основания стрелки

      path.move(to: CGPoint(x: rect.minX, y: rect.midY))
      path.addLine(to: CGPoint(x: rect.maxX - headLength, y: rect.midY))
      path.addLine(to: CGPoint(x: rect.maxX - headLength, y: rect.minY + (rect.height - shaftWidth) / 2))
      path.addLine(to: CGPoint(x: rect.maxX - 30, y: rect.midY))
      path.addLine(to: CGPoint(x: rect.maxX - headLength, y: rect.maxY - (rect.height - shaftWidth) / 2))
//        path.addLine(to: CGPoint(x: rect.maxX - headLength, y: rect.maxY))
    path.addLine(to: CGPoint(x: rect.maxX - headLength, y: rect.midY))
//        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))

      return path
  }
}

struct ContentView2: View {
    @State private var arrowLength: CGFloat = 0.7 // Пример переменной для изменения длины
    
    var body: some View {
        VStack {
            Arrow()
                .stroke(.mainGrey, lineWidth: 4)
                .frame(width: 200, height: 50)
            
            // Пример использования переменной состояния для изменения длины
//            Slider(value: $arrowLength, in: 0.3...1.0)
//
//            Arrow()
//                .stroke(.red, lineWidth: 3)
//                .frame(width: 200 * arrowLength, height: 50) // Изменение ширины в зависимости от arrowLength
        }
    }
}
