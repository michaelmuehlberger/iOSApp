//
//  SetCoordinateView.swift
//  iOSAppMuehlberger
//
//  Created by Michael Mühlberger on 08.06.24.
//

import SwiftUI

struct SetCoordinateView: View {
    
    @State var latitude: String = ""
    @State var longitude: String = ""
    
    var body: some View {
            NavigationView {
                VStack {
                    TextField("Enter Latitude", text: $latitude)
                        .padding()
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    TextField("Enter Longitude", text: $longitude)
                        .padding()
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button(action: {

                    }) {
                        Text("Set Coordinates")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
    
}

#Preview {
    SetCoordinateView()
}
