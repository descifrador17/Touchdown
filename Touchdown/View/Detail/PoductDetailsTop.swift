//
//  PoductDetailsTop.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

struct PoductDetailsTop: View {
    
    var product: Product
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6){
            VStack(alignment: .leading){
                Text("Price")
                    .fontWeight(.semibold)
                Text(product.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }//VSTACK
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }//HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })
    }
}

struct PoductDetailsTop_Previews: PreviewProvider {
    static var previews: some View {
        PoductDetailsTop(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
