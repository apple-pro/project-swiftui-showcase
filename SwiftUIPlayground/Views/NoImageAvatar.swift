//
//  NoImageAvatar.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/7/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

struct NoImageAvatar: View {
    var body: some View {
        Text("LB")
            .font(.largeTitle)
            .foregroundColor(.white)
            .aspectRatio(1.0, contentMode: .fit)
            .padding()
            .background(Color.red)
            .clipShape(Circle())
            .padding()
            .background(Circle())
    }
}

struct NoImageAvatar_Previews: PreviewProvider {
    static var previews: some View {
        NoImageAvatar()
    }
}
