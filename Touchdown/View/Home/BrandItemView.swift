//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

struct BrandItemView: View {
    
    var brand: Brand
    
    var body: some View {
        ZStack {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding(10)
        }//ZSTACK
        .frame(width: 100, height: 100, alignment: .center)
        .background(Color.white)
        .cornerRadius(12)
        .background(
            RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray, lineWidth: 2))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
