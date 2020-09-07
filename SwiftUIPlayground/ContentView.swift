//
//  ContentView.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/7/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

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

let demoViews = [
    "NoImageAvatar",
    "SomeReallyAwesomeView",
    "AnotherReallyAwesomeView"
]

struct ConditionalView: View {
    
    let viewName: String
    
    //you can use conditionals and return any kind of view
    //normally swift ui will not allow you to do this
    //a better workaround is just to wrap the conditional view in some
    //kind of layout view (V/Z/HStack)
    //@ViewBuilder
    var body: some View {
        VStack {
            if demoViews[0] == viewName {
                NoImageAvatar()
            } else if demoViews[1] == viewName {
                SomeReallyAwesomeView()
            } else if demoViews[2] == viewName {
                AnotherReallyAwesomeView()
            } else {
                NoImageAvatar()
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
