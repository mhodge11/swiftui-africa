//
//  LocationModel.swift
//  Africa
//
//  Created by Micah Hodge on 7/14/23.
//

import Foundation
import MapKit

struct Location: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
