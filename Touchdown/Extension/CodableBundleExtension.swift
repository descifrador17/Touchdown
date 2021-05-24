//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Dayal, Utkarsh on 24/05/21.
//

import Foundation

extension Bundle{
    func decodeJSON<T: Codable>(_ file: String) -> T {
        //Locating File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file)")
        }
        
        //Creating property for data
        guard let content = try? Data(contentsOf: url) else {
            fatalError("Failed to load data from \(file)")
        }
        
        //Decode Data
        guard let data = try? JSONDecoder().decode(T.self, from: content) else {
            fatalError("Failed to Decode \(file)")
        }
        
        return data
    }
}
