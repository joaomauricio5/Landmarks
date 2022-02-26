//
//  Landmark.swift
//  Landmarks
//
//  Created by João Mauricio UWE ID 18030724 on 26/02/2022.
//

import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
    var id: String
    var name: String
    var park: String
    var state: String
    var description: String
}

private var imageName: String
var image: Image {
    Image(imageName)
}
