//
//  InsertFactView.swift
//  africa
//
//  Created by Yasin Karasu on 10.12.2024.
//

import SwiftUI

struct InsertFactView: View {
    //    Mark: - properties
    let animal : Animal
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact,id: \.self){
                    item in Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148,idealHeight: 168,maxHeight: 180)
        }
    }
}

struct InsertFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        InsertFactView(animal: animals[0])
    }
}
