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
            HomeView().tabItem { Text("home") }
            SetCoordinateView().tabItem { Text("set coordinates") }
            MapView(latitude: 1, lonitude: 2).tabItem { Text("set map") }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
