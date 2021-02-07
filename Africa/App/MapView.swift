//
//  MapView.swift
//  Africa
//
//  Created by Alisultan Abdullah on 2.01.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.437799)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        //        Map(coordinateRegion: $region)
        //            .ignoresSafeArea(.all)
        
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {item in
            //            MapPin(coordinate: item.location, tint: .accentColor)
            //        })
            //        .ignoresSafeArea()
            
            //        MapMarker(coordinate: item.location, tint: .accentColor)
            
            
            //            MapAnnotation(coordinate: item.location) {
            //                Image("logo")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 32, height: 32, alignment: .center)
            //            }
            //        })
            //        .ignoresSafeArea()
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        })
        .ignoresSafeArea()
        .overlay(
            HStack(alignment: .center, spacing: 12.0) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3.0) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Longtitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                    }
                }
            }
            
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            )
            .padding()
            , alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
