//
//  MapView.swift
//  iOSAppMuehlberger
//
//  Created by Michael Mühlberger on 08.06.24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var latitude1: Double
    var longitude1: Double
    
    @State private var showAlert = false
    @AppStorage("latitude") var latitude2: Double? //latitude from SetCoordinateView
    @AppStorage("longitude") var longitude2: Double? //longitude from SetCoordinateView

    
    init() {
        self.latitude1 = 47.4437 //Latitude of Kapfenberg
        self.longitude1 = 15.2919 //Lonitude of Kapfenberg
        
    }
    
    var body: some View {
        
        VStack {
            Text((latitude2 != nil && longitude2 != nil) ? "Find the pin (red circle) outside Kapfenberg and click on it!" : " Set Pin in \"Set Coordinate\" - currently no Pin set")
                .padding()
            
            Map(coordinateRegion: .constant(MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: latitude1, longitude: longitude1),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )), annotationItems: {
                var items = [MapPinStruct(latitude: latitude1, longitude: longitude1)]
                if let lat2 = latitude2, let lon2 = longitude2 {
                    items.append(MapPinStruct(latitude: lat2, longitude: lon2))
                }
                return items
            }()) { location in
                return MapAnnotation(coordinate: location.coordinate) {
                    Circle()
                        .fill(location.latitude == latitude2 && location.longitude == longitude2 ? Color.red : Color.blue)
                        .frame(width: 10, height: 10)
                        .onTapGesture {
                            if location.latitude == latitude2 && location.longitude == longitude2 {
                                showAlert = true
                                UIImpactFeedbackGenerator(style: .medium).impactOccurred()
                            }
                        }
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Congratulations"), message: Text("You found the coordinates!"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct MapPinStruct: Identifiable {
    let id = UUID()
    var latitude: Double
    var longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
