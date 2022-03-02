//
//  MapView.swift
//  Landmarks
//
//  Created by João Mauricio UWE ID 18030724 on 25/02/2022.
//

import SwiftUI
import MapKit


//private var turtleRockCoordinates = CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)

//struct MapLocation: Identifiable {
//    let id = UUID()
//    let coordinates: CLLocationCoordinate2D
//}


struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    }
    
    //    var annotationItem = MapLocation(coordinates: turtleRockCoordinates)
    
    var body: some View {
        
        //        Map(coordinateRegion: $region,
        //            interactionModes: MapInteractionModes() , /*interactionModes() is empty in order to prevent the user from moving the map */
        //            annotationItems: [annotationItem])
        //        { place in
        //            MapMarker(coordinate: annotationItem.coordinates)
        //        }
        
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
