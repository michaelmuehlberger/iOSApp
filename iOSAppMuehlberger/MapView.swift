//
//  MapView.swift
//  iOSAppMuehlberger
//
//  Created by Michael Mühlberger on 08.06.24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var latitude: Double
    var lonitude: Double
    
    init(latitude: Double, lonitude: Double) {
        self.latitude = latitude
        self.lonitude = lonitude
    }
    
    var body: some View {
        Map{
        }
        .mapStyle(.hybrid)
        .mapControlVisibility(.visible)
    }
}
