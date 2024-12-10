//
//  AnimalModel.swift
//  africa
//
//  Created by Yasin Karasu on 10.12.2024.
//

import SwiftUI

struct Animal: Codable,Identifiable{
    let id:String
    let name: String
    let headline:String
    let description:String
    let image: String
    let gallery: [String]
    let fact: [String]
    let link:String
}
