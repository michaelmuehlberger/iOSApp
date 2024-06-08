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
                 SetAndGo

                 SetAndGo ist ein iOS App bei der Sie in dem Tab "SetCoordinates" Koordinaten eingeben können. Anschließend wird in der "MapView" von Kapfenberg aus eine Luftlinie zu den Koordinaten angegeben. Sind Sie in der MapView zu dem jeweiligen Ort navigiert, erscheint ein Pop Up und das Handy vibriert. Die eingegeben Daten in dem "SetCoordinates" werden mit SaveState gespeichert.

                 Eingebaute Features der eigenen App:
                 - Logo und UI (Layout mit Whitespace)
                 - Navigation (Tab View + Pop Up)-
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
