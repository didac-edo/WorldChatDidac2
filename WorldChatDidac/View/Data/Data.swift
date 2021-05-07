//
//  Data.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 24/4/21.
//

import SwiftUI
import MapKit

struct Data {
    static let places = [
        Place(index: 0, name: "Boracay, Philipphines", imageName: "boracay", location: CLLocationCoordinate2D(latitude: 11.9672475, longitude: 121.9252489), activities: activities1),
        Place(index: 1, name: "Dominican Republic", imageName: "dominican", location: CLLocationCoordinate2D(latitude: 18.154504, longitude: -68.7120643), activities: activities2),
        Place(index: 2, name: "Hawaii", imageName: "hawaii", location: CLLocationCoordinate2D(latitude: 19.728583, longitude: -155.534611), activities: activities3),
        Place(index: 4, name: "New York", imageName: "nueva_york", location: CLLocationCoordinate2D(latitude: 40.730610, longitude: -73.935242), activities: activities4)
    
    ]
    
    static let activities1 = [
        Activity(title: "PLAYA", imageName: "playa_boracay", address: "Boracay Banwa it Malay, Lalawigan ng Aklan"),
        Activity(title: "BUCEAR", imageName: "bucear", address: "White Beach Boracay, Lalawigan ng Aklan"),
        Activity(title: "SURFING", imageName: "surfing", address: "Bulabog Beach, Malay, Philippines, Lalawigan ng Aklan")
    ]
    
    static let activities2 = [
        Activity(title: "PUNTA CANA", imageName: "punta_cana", address: "La Altagraica Province, República Dominicana"),
        Activity(title: "SANTO DOMINGO", imageName: "santo_domingo", address: "Santo Domingo Province, República Dominicana"),
        Activity(title: "LA ROMANA", imageName: "la_romana", address: "La Romana Province, República Dominicana")
    ]
    
    static let activities3 = [
        Activity(title: "ISLA MAUI", imageName: "isla_maui", address: "Maui, Hawaii, Estados Unidos de America"),
        Activity(title: "ISLA OAHU", imageName: "isla_oahu", address: "Waikīkī Beach, Hawaii, Estados Unidos de America"),
        Activity(title: "ISLA GRANDE", imageName: "isla_grande", address: "Hawaii, Estados Unidos de America")
    ]
    
    static let activities4 = [
        Activity(title: "TIMES SQUARE", imageName: "times_square", address: "Manhattan, NY 10036, Estats Units"),
        Activity(title: "CENTRAL PARK", imageName: "central_park", address: "59th to 110th Street Manhattan Borough"),
        Activity(title: "PUENTE DE BROOKLYN", imageName: "puente_brooklyn", address: "Brooklyn Bridge, New York, NY 10038, Estats Units")
    ]

}
