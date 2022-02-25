//
//  MapView.swift
//  Landmarks
//
//  Created by João Mauricio UWE ID 18030724 on 25/02/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
           center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
           span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
       )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
