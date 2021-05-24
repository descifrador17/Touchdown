//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(players){ player in
                FeaturedItemView(player: player)
                    .padding(.horizontal, 15)
                    .padding(.top, 10)
            }
        }//TABVIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}


struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
