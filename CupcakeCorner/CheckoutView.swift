//
//  CheckoutView.swift
//  CupcakeCorner
//
//  Created by Rafael Calunga on 2020-10-17.
//

import SwiftUI

struct CheckoutView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack {
                    Image("cupcakes")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width)
                    
                    Text("Your total is $\(order.cost, specifier: "%.2f")")
                        .font(.title)
                    
                    Text("Quantity: \(order.quantity)")
                        .foregroundColor(.secondary)
                    
                    Button(action: {
                        // place the order
                    }) {
                        Text("Place Order")
                            .fontWeight(.semibold)
                            .frame(minWidth: 0, maxWidth: geo.size.width)
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                            .padding()
                    }
                    
                }
            }
        }
        .navigationTitle("Check out")
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}
