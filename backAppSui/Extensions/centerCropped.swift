//
//  centerCropped.swift
//  backAppSui
//
//  Created by Daz N311 on 07.07.2025.
//

import SwiftUI

extension Image {
    func centerCropped() -> some View {
        GeometryReader { geo in
            self
            .resizable()
            .scaledToFill()
            .frame(width: geo.size.width, height: geo.size.height)
            .clipped()
            .contentShape(Rectangle())
        }
    }
}
