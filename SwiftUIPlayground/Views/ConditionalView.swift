//
//  ConditionalView.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/7/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

struct ConditionalView: View {
    
    let viewName: String
    
    @ViewBuilder
    var body: some View {
        if viewName == "NoImageAvatar" {
            NoImageAvatar()
        } else {
            Text("Unknown View: \(viewName)")
        }
    }
}

struct ConditionalView_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalView(viewName: "A")
    }
}
