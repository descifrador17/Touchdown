//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            
            Text("ADD TO CART")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
            
            Spacer()
        })
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green , blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
