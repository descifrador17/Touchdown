//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                    ForEach(brands) { brand in
                        BrandItemView(brand: brand)
                    }
            })//GRID
            .frame(height: 220)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })//SCROLL
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
