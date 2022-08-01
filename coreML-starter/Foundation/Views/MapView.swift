//
//  MapView.swift
//  coreML-starter
//
//  Created by scholar on 8/3/23.
//
import MapKit
import SwiftUI

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.87, longitude: -87.62), span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3))
    
    let annotations = [
        Place(name: "City of Chicago-Division 1", coordinate: CLLocationCoordinate2D(latitude: 41.999310, longitude: -87.674200)),
        Place(name: "Peggy Notebaert Nature Museum", coordinate: CLLocationCoordinate2D(latitude: 41.9266, longitude: -87.6349)),
        Place(name: "Household Chemicals and Computer Recycling Facility", coordinate: CLLocationCoordinate2D(latitude: 41.902540, longitude: -87.654660)),
        Place(name: "El Paseo Community Garden", coordinate: CLLocationCoordinate2D(latitude: 41.853939, longitude: -87.649628)),
        Place(name: "Merchant Park Community Garden", coordinate: CLLocationCoordinate2D(latitude: 41.946380, longitude: -87.732260)),
        Place(name: "Fulton St. Flower and Vegetable Garden", coordinate: CLLocationCoordinate2D(latitude: 41.885040, longitude: -87.736530))
        
    
    ]
    
    var body: some View {
        Map(coordinateRegion: $mapRegion, annotationItems: annotations, annotationContent: { place in
            MapMarker(coordinate: place.coordinate, tint: .blue)})}
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
