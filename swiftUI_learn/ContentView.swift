//
//  ContentView.swift
//  swiftUI_learn
//
//  Created by 刘星星 on 2019/11/20.
//  Copyright © 2019 刘星星. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(landMarks) { landMark in
                landMarkCell(landMark: landMark)
            }.navigationBarTitle(Text("少林寺啦啦啦"),  displayMode: .large)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct landMarkCell: View {
    let landMark: LandMark
    var body: some View {
        NavigationLink(destination: LandMarkDetailView(landMark: landMark)) {
            Image(landMark.originalImage)
            VStack(alignment: .leading) {
                Text(landMark.name)
                Text(landMark.location)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
