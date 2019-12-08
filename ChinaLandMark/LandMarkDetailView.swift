//
//  LandMarkView.swift
//  ChinaLandMark
//
//  Created by 刘星星 on 2019/12/8.
//  Copyright © 2019 刘星星. All rights reserved.
//

import SwiftUI

struct LandMarkDetailView: View {
    let landMark: LandMark
    @EnvironmentObject var lanMarkData: LandMarkData
    var currentIndex: Int! {
        lanMarkData.landMarks.firstIndex(where: {
            $0.id == landMark.id
        })
    }
    var body: some View {
        VStack {
            MapView(center: landMark.locationCordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 350)
            
            Image(landMark.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 3)
                .offset(x: 0, y: -150)
                .padding(.bottom, -150)
            
            
            VStack(alignment: .leading, spacing: 18) {
                HStack {
                    Text(landMark.name).font(.title)
                    Button(action: {
                       
                        self.lanMarkData.landMarks[self.currentIndex].isFavorite.toggle()
                         print(self.lanMarkData.landMarks[self.currentIndex].isFavorite)
                    }) {
                        if self.lanMarkData.landMarks[self.currentIndex].isFavorite {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                        } else  {
                            Image(systemName: "star")
                        }
                        
                    }
                }
                HStack {
                    Text(landMark.province).font(.headline)
                    Spacer()
                    Text(landMark.city).font(.subheadline)
                }
            }.padding()
            Spacer()
            
        }
        .navigationBarTitle(Text("详情"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandMarkDetailView(landMark: LandMarkData().landMarks[3]).environmentObject(LandMarkData())
        }
    }
}
