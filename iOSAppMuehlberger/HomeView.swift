//
//  HomeView.swift
//  iOSAppMuehlberger
//
//  Created by Michael Mühlberger on 08.06.24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("""
                 SetAndFine

                 SetAndFind is an iOS App in which you can set a Pin inside the "Set Coordinates" Tab. Afterwards you can go to the View Map Tab and find the set Pin (red circle). If you find it and tap on it, you win :) !

                Features in the App:
                 - Logo an UI (with Layout Whitespace)
                 - Navigation (Tab View + Pop Up)
                 - Location Service (Showing Map)
                 - Data Binding (Saving State)
                 - Activator (Vibration)
            """)
        }
    }
}

#Preview {
    HomeView()
}
