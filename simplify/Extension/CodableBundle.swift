//
//  CodableBundle.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/28/22.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file:String) -> T {
        // Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("ERROR: Faild to locate \(file) in the bundle")
        }
        
        //Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("ERROR: Faild to locate \(file) from the bundle")
        }
        
        //Creata a decoder
        let decoder = JSONDecoder()
        
        //Create a property for the decoded data
        guard let decodeedData = try? decoder.decode(T.self, from: data) else {
            fatalError("ERROR: Faild to decode \(file) from the bundle")
        }
        
        //Return the reaady to use data
        return decodeedData
    }
}
