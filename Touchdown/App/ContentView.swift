//
//  ContentView.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows
                                .first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                 
                ScrollView(.vertical, showsIndicators: false, content:{
                    VStack(spacing: 0){
                        FeaturedTabView()
                    }//VSTACK
                    
                    CategoryGridView()
                    
                    TitleView(title: "Helmets")
                    
                    ProductGridView()
                        .padding()
                    
                    TitleView(title: "Brands")
                    
                    BrandGridView()
                    
                    FooterView()
                        .padding(.horizontal)
                })//SCROLL
            }//VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//ZSTACK
        .ignoresSafeArea(.all,edges: .top)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
