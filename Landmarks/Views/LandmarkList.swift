//
//  LandmarkList.swift
//  Landmarks
//
//  Created by João Mauricio UWE ID 18030724 on 02/03/2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks) { landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark),
                    label: {
                        LandmarkRow(landmark: landmark)
                    })
            }
            .navigationTitle("Landmarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)","iPhone XS Max", "iPad (8th generation)"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
