//
//  FullMapView.swift
//  Landmarks
//
//  Created by João Mauricio UWE ID 18030724 on 04/03/2022.
//

import SwiftUI
import MapKit

struct FullMapView: View {
    
    @State private var defaultRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868),
        span: MKCoordinateSpan(latitudeDelta: 100.0, longitudeDelta: 100.0)
    )
    
    var landmarks: [Landmark]
    
    var body: some View {
        
        Map(coordinateRegion: $defaultRegion, annotationItems: landmarks) { location in
            MapMarker(coordinate: location.locationCoordinate)
//            MapAnnotation(coordinate: location.locationCoordinate) {
//                Circle()
//                    .stroke(Color.red, lineWidth: 3)
//                    .frame(width: 44, height: 44)
//                    .onTapGesture {
//                        print("BUTTON TEST")
//                    }
//            }
        }
        .ignoresSafeArea()
    }
    
    
}

struct FullMapView_Previews: PreviewProvider {
    static var previews: some View {
        FullMapView(landmarks: landmarks)
    }
}
