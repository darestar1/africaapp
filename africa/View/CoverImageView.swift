//
//  CoverImageView.swift
//  africa
//
//  Created by Yasin Karasu on 9.12.2024.
//

import SwiftUI

struct CoverImageView: View {
    //    Mark: - property
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    var body: some View {
        
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}

#Preview {
    CoverImageView()
}
