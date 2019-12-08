//
//  LandMark.swift
//  ChinaLandMark
//
//  Created by 刘星星 on 2019/12/8.
//  Copyright © 2019 刘星星. All rights reserved.
//

import SwiftUI
import CoreLocation
import Combine
struct LandMark: Identifiable {
    var id: Int
    var name: String
    var city: String
    var province: String
    var latitude: Double
    var longitude: Double
    var locationCordinate: CLLocationCoordinate2D { CLLocationCoordinate2D(latitude: latitude, longitude: longitude) }
    var imageName: String { "\(id)" }
    var isFavorite: Bool
}



final class LandMarkData: ObservableObject {
    @Published var landMarks = [
        LandMark(id: 1, name: "少林寺1", city: "登封", province: "河南", latitude: 39.9087243, longitude: 116.3952859, isFavorite: true),
        LandMark(id: 2, name: "少林寺2", city: "登封", province: "河南", latitude: 36.9087243, longitude: 116.3952859, isFavorite: false),
        LandMark(id: 3, name: "少林寺3", city: "登封", province: "河南", latitude: 35.9087243, longitude: 116.3952859, isFavorite: true),
        LandMark(id: 4, name: "少林寺4", city: "登封", province: "河南", latitude: 34.9087243, longitude: 116.3952859, isFavorite: true),
        LandMark(id: 5, name: "少林寺5", city: "登封", province: "河南", latitude: 33.9087243, longitude: 116.3952859, isFavorite: false),
        LandMark(id: 6, name: "少林寺6", city: "登封", province: "河南", latitude: 32.9087243, longitude: 116.3952859, isFavorite: true),
        LandMark(id: 7, name: "少林寺7", city: "登封", province: "河南", latitude: 31.9087243, longitude: 116.3952859, isFavorite: false),
        LandMark(id: 8, name: "少林寺8", city: "登封", province: "河南", latitude: 38.9087243, longitude: 116.3952859, isFavorite: false),
        LandMark(id: 9, name: "少林寺9", city: "登封", province: "河南", latitude: 37.9087243, longitude: 116.3952859, isFavorite: true)
        ]
}
