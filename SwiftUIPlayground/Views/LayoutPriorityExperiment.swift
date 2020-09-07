//
//  AnotherReallyAwesomeView.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/7/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

struct LayoutPriorityExperiment: View {
    var body: some View {
        HStack {
            Text("This is some great and long text")
                .font(.largeTitle)
                .background(Color.white)
            
            Spacer()
            
            Text("This is some great and long text")
                .font(.largeTitle)
                .layoutPriority(1.5)
        }
    }
}

struct AnotherReallyAwesomeView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriorityExperiment()
    }
}
