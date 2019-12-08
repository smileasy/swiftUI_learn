//
//  LandMarkListView.swift
//  ChinaLandMark
//
//  Created by 刘星星 on 2019/12/8.
//  Copyright © 2019 刘星星. All rights reserved.
//

import SwiftUI

struct LandMarkListView: View {
    @State private var isShowFavoriteOnly = false
    @EnvironmentObject var lanMarkData: LandMarkData
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $isShowFavoriteOnly) {
                    Text("只展示收藏")
                }
                ForEach(lanMarkData.landMarks) { landMark in
//                    if (self.isShowFavoriteOnly) {
//                        if (landMark.isFavorite) {
//                            NavigationLink(destination: LandMarkView(landMark: landMark)) {
//                                LandMarkCell(landMark: landMark)
//                            }
//                        }
//                    } else {
//                        NavigationLink(destination: LandMarkView(landMark: landMark)) {
//                            LandMarkCell(landMark: landMark)
//                        }
//                    }
                    
                    if !self.isShowFavoriteOnly || landMark.isFavorite {
                        NavigationLink(destination: LandMarkDetailView(landMark: landMark).environmentObject(self.lanMarkData)) {
                            LandMarkCell(landMark: landMark)
                        }
                    }
                    
                }
            }.navigationBarTitle(Text("中国地标"))
        }
        
    }
}

struct LandMarkListView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11 Pro Max","iPhone 11","iPhone 8"], id: \.self) { deviceName in
            LandMarkListView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        
        
    }
}
