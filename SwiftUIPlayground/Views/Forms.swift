//
//  Forms.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/11/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

struct Forms: View {
    var body: some View {
        NavigationView {
            Form {
                Text("Test")
            }.navigationBarTitle(Text("Cupcake Corner"))
        }
    }
}

struct Forms_Previews: PreviewProvider {
    static var previews: some View {
        Forms()
    }
}
