//
//  ContentView.swift
//  africa
//
//  Created by Yasin Karasu on 9.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
            //    Mark: - property
        let animals: [Animal] = Bundle.main.decode("animals.json")
            NavigationView{
                List{
                    CoverImageView()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top:0,leading: 0,bottom: 0,trailing: 0))
                    ForEach(animals) {
                        animal in AnimalListItemView(animal: animal)
                    }
                }
                .navigationBarTitle("Africa",displayMode: .large)
            }
        }
       
    }


#Preview {
    ContentView()
}
