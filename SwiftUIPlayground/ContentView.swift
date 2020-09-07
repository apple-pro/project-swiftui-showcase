//
//  ContentView.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/7/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

let demoViews = [
    "NoImageAvatar",
    "B"
]

struct ContentView: View {

    var body: some View {
        NavigationView {
            
            MasterView()
                .navigationBarTitle(Text("Projects"))
            
            DetailView(viewLabel: demoViews[0])
            
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct MasterView: View {
    
    var body: some View {
        List {
            ForEach(demoViews, id: \.self) { demoView in
                NavigationLink(
                    destination: DetailView(viewLabel: demoView)
                ) {
                    Text(demoView)
                }
            }
        }
    }
}

struct DetailView: View {
    
    let viewLabel: String

    var body: some View {
        Group {
            ConditionalView(viewName: viewLabel)
        }.navigationBarTitle(Text(viewLabel))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
