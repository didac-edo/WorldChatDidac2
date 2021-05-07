//
//  PlaceView.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 24/4/21.
//

import SwiftUI
import MapKit

struct PlaceView: View {
    @StateObject var placeFinder = PlaceFinder()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // Map view with markers of places
            Map(coordinateRegion: $placeFinder.region, annotationItems: placeFinder.spots) { spot in
                MapAnnotation(coordinate: spot.location, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                    MapMarker(placeName: spot.name)
                }
            }
            .ignoresSafeArea()
            
            PagerView(
                count: placeFinder.spots.count,
                index: $placeFinder.currentIndex,
                viewWidth: UIScreen.screenWidth - 40,
                content: {
                ForEach(placeFinder.spots) { place in
                    PlaceCardView(place: place)
                        .frame(width: UIScreen.screenWidth - 60, height: 380)
                        .onTapGesture {
                            withAnimation {
                                placeFinder.selectedPlace = place
                            }
                        }
                }
            })
                .opacity(placeFinder.selectedPlace == nil ? 1.0 : 0.0)
            
            if placeFinder.selectedPlace != nil {
               
                PlaceDetailView(placeFinder: placeFinder)
            }
        }
        .onAppear {
            placeFinder.currentIndex = 0
        }
    }
}

extension UIScreen {
   static let screenWidth   = UIScreen.main.bounds.size.width
   static let screenHeight  = UIScreen.main.bounds.size.height
   static let screenSize    = UIScreen.main.bounds.size
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView()
    }
}
