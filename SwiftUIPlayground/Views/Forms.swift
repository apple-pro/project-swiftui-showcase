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
    @Published var quantity = 3
    
    @Published var specialOrder = false
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
    @Published var name = ""
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var zip = ""
    
    var isValid: Bool {
        return !(name.isEmpty
            || streetAddress.isEmpty
            || city.isEmpty
            || zip.isEmpty)
    }
}

struct Forms: View {
    
    @ObservedObject var order = Order()
    
    var body: some View {
        //NavigationView {
            Form {
                
                Section {
                    Picker(selection: $order.type, label: Text("Select your cake type")) {
                        ForEach(0 ..< Order.types.count) {
                            Text(Order.types[$0]).tag($0)
                        }
                    }
                    
                    Stepper(value: $order.quantity, in: 3...10) {
                        Text("Number of cakes: \(order.quantity)")
                    }
                }
                
                Section {
                    Toggle(isOn: $order.specialOrder) {
                        Text("Any Special Request?")
                    }
                    
                    if order.specialOrder {
                        Toggle(isOn: $order.extraFrosting) {
                            Text("Extra Frosting")
                        }
                        
                        Toggle(isOn: $order.addSprinkles) {
                            Text("Add Sprinkles")
                        }
                    }
                    
                }
                
                Section {
                    TextField("Name", text: $order.name)
                    TextField("Street Address", text: $order.streetAddress)
                    TextField("City", text: $order.city)
                    TextField("ZIP", text: $order.zip)
                }
                
                Section {
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "cart")
                            Text("Buy Now")
                        }
                    }
                }.disabled(!order.isValid)
                
                
            }.navigationBarTitle(Text("Cupcake Corner"))
        //}
    }
}

struct Forms_Previews: PreviewProvider {
    static var previews: some View {
        Forms()
    }
}
