//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by João Mauricio UWE ID 18030724 on 02/03/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .padding(.bottom, -130)
                .offset(y: -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                    .padding(.vertical)
                
                Text("Turtle Rock is a neighborhood in Irvine, California with a population of 25,990. Turtle Rock is in Orange County and is one of the best places to live in California. Living in Turtle Rock offers residents a dense suburban feel and most residents own their homes.")
                
                
            }
            .padding()
            Spacer()
        }
    }
}


struct LandmarDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
