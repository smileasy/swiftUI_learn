//
//  LandMark.swift
//  swiftUI_learn
//
//  Created by 刘星星 on 2019/12/7.
//  Copyright © 2019 刘星星. All rights reserved.
//

import SwiftUI

struct LandMark: Identifiable {
    var id = UUID()
    var name: String
    var location: String
    var imageName: String
    var originalImage: String { imageName }
    var thumbnailImage: String { "\(imageName)(Thumb)"}
}

let landMarks = [
 LandMark(name: "少林寺", location: "嵩山", imageName: "flag"),
 LandMark(name: "少林寺1", location: "嵩山1", imageName: "flag"),
 LandMark(name: "少林寺2", location: "嵩山2", imageName: "flag"),
 LandMark(name: "少林寺3", location: "嵩山3", imageName: "flag"),
 LandMark(name: "少林寺4", location: "嵩山4", imageName: "flag")
]
