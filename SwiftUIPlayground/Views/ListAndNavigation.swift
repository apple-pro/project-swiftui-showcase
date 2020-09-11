//
//  GridSearch.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/9/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI


struct ListAndNavigation: View {
    
    //https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-environmentobject-to-share-data-between-views
    //Data is shared between apps
    //@EnvironmentObject var userData: UserData
    
    @ObservedObject var userData: UserData = UserData()
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(landmarkData) { landmark in
                    if !self.userData.showFavoritesOnly {
                        NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                        
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
            
            LandmarkDetailView(landmark: landmarkData[0])
        }
    }
}

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
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
