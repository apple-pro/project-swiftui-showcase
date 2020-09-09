//
//  GridSearch.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/9/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI


struct ListAndNavigation: View {
    
    var body: some View {
        List(landmarkData, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarkRow: View {
    
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct GridSearch_Previews: PreviewProvider {
    static var previews: some View {
        ListAndNavigation()
        //LandmarkRow(landmark: landmarkData[2])
        
//        Group {
//            LandmarkRow(landmark: landmarkData[0])
//                .previewLayout(.fixed(width: 300, height: 70))
//            LandmarkRow(landmark: landmarkData[1])
//                .previewLayout(.fixed(width: 300, height: 70))
//        }
    }
}
