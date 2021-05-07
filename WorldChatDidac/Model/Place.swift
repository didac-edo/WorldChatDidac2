//
//  Place.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 24/4/21.
//

import MapKit

struct Place: Identifiable {
    let id = UUID()
    let index: Int
    let name: String
    let imageName: String
    let location: CLLocationCoordinate2D
    let activities: [Activity]
}
