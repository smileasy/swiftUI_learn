//
//  MapView.swift
//  ChinaLandMark
//
//  Created by 刘星星 on 2019/12/8.
//  Copyright © 2019 刘星星. All rights reserved.
//

import SwiftUI
import MapKit
struct MapView: UIViewRepresentable {
    let center: CLLocationCoordinate2D
    typealias UIViewType = MKMapView
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {MKMapView()}
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let mapView = uiView
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(center: LandMarkData().landMarks[0].locationCordinate)
    }
}
