//
//  TitleView.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

struct TitleView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title.capitalized)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }//HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmets")
    }
}
