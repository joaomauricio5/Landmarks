//
//  ContentView.swift
//  Landmarks
//
//  Created by João Mauricio UWE ID 18030724 on 25/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var modelData = ModelData()

    var body: some View {
    
        TabView{
            LandmarkList()
                .tabItem {
                    Image(systemName: "list.triangle")
                    Text("List")
                }
            
            FullMapView(/*landmarks: modelData.landmarks*/)
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Map")
                }
        }.environmentObject(modelData)
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
