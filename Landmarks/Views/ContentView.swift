//
//  ContentView.swift
//  Landmarks
//
//  Created by João Mauricio UWE ID 18030724 on 25/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        TabView{
            LandmarkList()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("List")
                }
            
            FullMapView(landmarks: landmarks)
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Map")
                }
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
