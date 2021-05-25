//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            
            //Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //Header
            Text("Protective Gear")
                .padding(.horizontal)
                .foregroundColor(.white)
            
            Text(shop.selectedProduct?.name.capitalized ?? sampleProduct.name.capitalized)
                .font(.largeTitle)
                .fontWeight(.black)
                .padding(.horizontal)
                .foregroundColor(.white)
            
            
            //Details - Top Part
            PoductDetailsTop(product: shop.selectedProduct ?? sampleProduct)
                .padding()
                .zIndex(1.0)
            
            //Details - Bottom Part
            VStack(alignment: .center, spacing: nil, content: {
                
                //Ratings + Sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 15)
                
                //Description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//SCROLL
                
                //Quantity + Fav
                QuantityFavDetailView()
                
                //Add to Cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
            })//VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        })//VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green , blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                        .ignoresSafeArea(.all,edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
