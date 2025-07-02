//
//  FontExt.swift
//  backAppSui
//
//  Created by Daz N311 on 01.07.2025.
//

import Foundation
import SwiftUI

extension View {
    func font(type: Inter, size: CGFloat = 16) -> some View {
        self
            .font(Font.custom(type.rawValue, size: size))
    }
}
