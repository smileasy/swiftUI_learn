//
//  LandMarkCell.swift
//  ChinaLandMark
//
//  Created by 刘星星 on 2019/12/8.
//  Copyright © 2019 刘星星. All rights reserved.
//

import SwiftUI

struct LandMarkCell: View {
    let landMark: LandMark
    var body: some View {
        HStack {
            Image(landMark.imageName)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(10)
            Text(landMark.name)
            Spacer()
            if (landMark.isFavorite) {
                Image(systemName: "star.fill").foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
            }
        }
    }
}

struct LandMarkCell_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            LandMarkCell(landMark: LandMarkData().landMarks[1])
            LandMarkCell(landMark: LandMarkData().landMarks[2])
            LandMarkCell(landMark: LandMarkData().landMarks[3])
        }.previewLayout(.fixed(width: 300, height: 70))
        
    }
}
