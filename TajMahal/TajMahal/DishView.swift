//
//  DishView.swift
//  TajMahal
//
//  Created by Stéphane SAULNIER on 23/02/2025.
//

import SwiftUI

// Texte normal
struct TajText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.custom("PlusJakartaSans-Regular", size: 12))
           
    }
}

#Preview {
    TajText(text: "texte normal")
}
