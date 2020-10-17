//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Rafael Calunga on 2020-10-17.
//

import SwiftUI

struct AddressView: View {
    
    @ObservedObject var order: Order
    
    var body: some View {
        Text("\(order.quantity)")
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
