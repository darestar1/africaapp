//
//  ExternalWeblinkView.swift
//  africa
//
//  Created by Yasin Karasu on 10.12.2024.
//

import SwiftUI

struct ExternalWeblinkView: View {
  // MARK: - PROPERTIES
  
  let animal: Animal


  var body: some View {
    GroupBox {
      HStack {
        Image(systemName: "globe")
        Text("Wikipedia")
        Spacer()
        
        Group {
          Image(systemName: "arrow.up.right.square")
          
          Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
        }
        .foregroundColor(.accentColor)
      }
    }
  }
}


struct ExternalWeblinkView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    ExternalWeblinkView(animal: animals[0])
      
  }
}
