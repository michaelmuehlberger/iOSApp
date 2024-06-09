//
//  SetCoordinateView.swift
//  iOSAppMuehlberger
//
//  Created by Michael Mühlberger on 08.06.24.
//

import SwiftUI

struct SetCoordinateView: View {
    
    @AppStorage("latitude") private var latitude: Double?
    @AppStorage("longitude") private var longitude: Double?
    
    @State var latitudeString: String = "" // valid values: -90 to 90
    @State var longitudeString: String = "" // valid values: -180 to 180
    
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Latitude", text: $latitudeString)
                    .padding()
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Enter Longitude", text: $longitudeString)
                    .padding()
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    guard let latitude = Double(latitudeString),
                          (-90...90).contains(latitude),
                          let longitude = Double(longitudeString),
                          (-180...180).contains(longitude) else {
                        showAlert = true
                        
                        return
                    }
                    
                    self.latitude = latitude
                    self.longitude = longitude
                    
                    return
                    
                }) {
                    Text("Set Coordinates")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }.alert(isPresented: $showAlert) {
                    Alert(title: Text("Invalid input"), message: Text("Please enter valid latitude (-90 to 90) and longitude (-180 to 180)."), dismissButton: .default(Text("OK")))
                }
                
                Text("Saved Latitude: \(latitude?.description ?? "Not set")")
                    .padding(.top, 20)
                Text("Saved Longitude: \(longitude?.description ?? "Not set")")
                    .padding()
            }
        }
    }
}
