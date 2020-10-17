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
        Text("\(order.type)")
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}
