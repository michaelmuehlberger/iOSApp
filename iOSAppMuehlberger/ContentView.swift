//
//  ContentView.swift
//  iOSAppMuehlberger
//
//  Created by Michael Mühlberger on 01.06.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem { Text("Home") }
            SetCoordinateView().tabItem { Text("Set Coordinates") }
            MapView().tabItem { Text("View Map") }
        }
        .padding( .horizontal, 10)
        .padding( .vertical, 10)
    }
}

#Preview {
    ContentView()
}
