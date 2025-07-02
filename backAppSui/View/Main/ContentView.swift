//
//  ContentView.swift
//  backAppSui
//
//  Created by Daz N311 on 01.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(.title)
                    .frame(width: 390)
                Text("Home staging")
                    .font(type: .bold)
            }
            .padding(.horizontal,10)
        }
        .frame(maxWidth: .infinity)
        .background(.mainBG)
    }
}

#Preview {
    ContentView()
}


