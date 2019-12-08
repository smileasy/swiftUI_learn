//
//  LandMarkDetailView.swift
//  swiftUI_learn
//
//  Created by 刘星星 on 2019/12/7.
//  Copyright © 2019 刘星星. All rights reserved.
//

import SwiftUI

struct LandMarkDetailView: View {
    let landMark: LandMark
    @State private var zoom = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(landMarks[0].originalImage)
                .resizable()
                .aspectRatio(contentMode: zoom ? .fill : .fit)
                .navigationBarTitle(Text(landMark.name), displayMode: .inline)
                .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 0, maxHeight: .infinity, alignment: .center)
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.zoom.toggle()
                    }
            }
            if !zoom {
                Text(landMark.location)
                    .font(.largeTitle)
                    .foregroundColor(.secondary)
                    .padding()
                    .transition(.move(edge: .trailing))
            }
        }
    }
}

struct LandMarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                LandMarkDetailView(landMark: landMarks[0])
            }
            NavigationView {
                LandMarkDetailView(landMark: landMarks[1])
            }
        }
    }
}
