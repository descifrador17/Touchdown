//
//  Constant.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import SwiftUI

//DATA

let players: [Player] = Bundle.main.decodeJSON("player.json")
let brands: [Brand] = Bundle.main.decodeJSON("brand.json")
let categories: [Category] = Bundle.main.decodeJSON("category.json")
let products: [Product] = Bundle.main.decodeJSON("product.json")
let smapleProduct: Product = products[0]

// COLOR

let colorBackground : Color = Color("ColorBackground")
let colorGray : Color = Color(UIColor.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem]{
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//UX

let feedback = UIImpactFeedbackGenerator(style: .medium)




