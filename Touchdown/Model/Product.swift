//
//  Product.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import UIKit

struct Product: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var red: Double{ return color[0] }
    var green: Double{ return color[1] }
    var blue: Double{ return color[2] }
    
    var formattedPrice: String { return "$\(price)"}
    
}
