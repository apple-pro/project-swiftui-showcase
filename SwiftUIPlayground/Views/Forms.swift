//
//  Forms.swift
//  SwiftUIPlayground
//
//  Created by StartupBuilder.INFO on 9/11/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

final class Order: ObservableObject {
    
    static let types = ["Vanilla", "Chocolate", "Strawberry"]
    
    @Published var type = 0
    @Published var count = 1
    @Published var hasSpecialOrder = false
    
}

struct Forms: View {
    
    @ObservedObject var order = Order()
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $order.type, label: Text("Select your cake type")) {
                    ForEach(0 ..< Order.types.count) {
                        Text(Order.types[$0]).tag($0)
                    }
                }
            }.navigationBarTitle(Text("Cupcake Corner"))
        }
    }
}

struct Forms_Previews: PreviewProvider {
    static var previews: some View {
        Forms()
    }
}
