//
//  QuantityFavDetailView.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

struct QuantityFavDetailView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter>0{
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
                    .foregroundColor( counter == 0 ? .gray : .black)
            })
            .disabled( counter == 0 ? true : false)
            
            Text("\(counter)")
                .fontWeight(.semibold)
            
            Button(action: {
                counter += 1
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
            
        })//HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
