//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

struct ProductGridView: View {
    var body: some View {
        LazyVGrid(columns: gridLayout, alignment: .center, spacing: rowSpacing, pinnedViews: [], content: {
                ForEach(products) { product in
                    ProductItemView(product: product)
                }
        })//GRID
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
    }
}
