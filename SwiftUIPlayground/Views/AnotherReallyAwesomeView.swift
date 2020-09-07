//
//  AnotherReallyAwesomeView.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/7/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

struct AnotherReallyAwesomeView: View {
    var body: some View {
        Text("f")
            .font(.largeTitle)
            .foregroundColor(.white)
            .aspectRatio(1.0, contentMode: .fit)
            .padding()
            .background(Color(#colorLiteral(red: 0.2358980775, green: 0.3523842096, blue: 0.5996781588, alpha: 1)))
            .clipShape(Circle())
            .padding(2)
            .background(Circle())
    }
}

struct AnotherReallyAwesomeView_Previews: PreviewProvider {
    static var previews: some View {
        AnotherReallyAwesomeView()
    }
}
