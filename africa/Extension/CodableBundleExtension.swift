//
//  CodableBundleExtension.swift
//  africa
//
//  Created by Yasin Karasu on 9.12.2024.
//

import Foundation


extension Bundle {
    func decode(_ file : String) -> [CoverImage]{
//        locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate \(file) in bundle")
        }
//        create property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
//        create decoder
        let decoder = JSONDecoder()
//        create property for decoded data
        guard let loaded = try? decoder.decode([CoverImage].self,from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
//        return ready to use data
        return loaded
        
    }
}
