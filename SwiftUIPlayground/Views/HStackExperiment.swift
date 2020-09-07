//
//  SomeReallyAwesomeView.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/7/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

struct HStackExperiment: View {
    var body: some View {
        HStack {
            Text("t")
                .font(.largeTitle)
                .foregroundColor(.white)
                .aspectRatio(1.0, contentMode: .fit)
                .padding()
                .background(Color(#colorLiteral(red: 0.2568539977, green: 0.7132608294, blue: 0.9055070281, alpha: 1)))
                .clipShape(Circle())
                .padding(2)
                .background(Circle())
            Text("a")
                .font(.largeTitle)
                .foregroundColor(.white)
                .aspectRatio(1.0, contentMode: .fit)
                .padding()
                .background(Color(#colorLiteral(red: 0.2568539977, green: 0.7132608294, blue: 0.9055070281, alpha: 1)))
                .clipShape(Circle())
                .padding(2)
                .background(Circle())
            Text("k")
                .font(.largeTitle)
                .foregroundColor(.white)
                .aspectRatio(1.0, contentMode: .fit)
                .padding()
                .background(Color(#colorLiteral(red: 0.2568539977, green: 0.7132608294, blue: 0.9055070281, alpha: 1)))
                .clipShape(Circle())
                .padding(2)
                .background(Circle())
        }
    }
}

struct SomeReallyAwesomeView_Previews: PreviewProvider {
    static var previews: some View {
        HStackExperiment()
    }
}
