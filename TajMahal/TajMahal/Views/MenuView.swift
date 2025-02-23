//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// 📌 Écran du menu sous forme de liste
struct MenuView: View {
    
    // 🔹 Référence vers le ViewModel qui contient les données du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        
        // 🔹 NavigationView permet d'afficher une barre de navigation en haut de l'écran
        NavigationView {
            
            // 🔹 List affiche dynamiquement les plats contenus dans `apetizerArray`
            List(viewModel.apetizerArray, id: \.name) { dish in
                
                // 🔹 HStack pour aligner l’image du plat à gauche et le texte à droite
                HStack {
                    
                    // 📷 Image du plat
                    Image(dish.imageName)
                        .resizable() // Permet à l’image de s’adapter à la taille donnée
                        .frame(width: 50, height: 50) // 🔹 Taille réduite pour une meilleure lisibilité
                        .clipShape(Circle()) // 🔹 Forme arrondie pour un design plus esthétique
                    
                    // 🔹 VStack pour organiser le texte verticalement
                    VStack(alignment: .leading) {
                        Text(dish.name) // 🔹 Nom du plat
                            .font(.headline) // 🔹 Police en gras pour bien distinguer le titre
                        
                        Text(dish.description) // 🔹 Description du plat
                            .font(.subheadline) // 🔹 Texte plus petit
                            .foregroundColor(.gray) // 🔹 Couleur grise pour un effet plus doux
                    }
                }
            }
            .navigationTitle("Menu") // 🔹 Titre affiché en haut de l'écran
            .font(.system(.headline, design: .default, weight: .semibold)) // 🔹 Style de police défini pour le titre
            .navigationBarTitleDisplayMode(.inline) // 🔹 Affichage compact du titre
        }
    }
}

// 🖥️ Aperçu en temps réel
#Preview {
    MenuView()
}



//*****Code correcte *****
//
//struct MenuView: View {
//    let viewModel = ViewModel() // Instance de la structure
//    
//    var body: some View {
//        NavigationView {
//            List(viewModel.apetizerArray, id: \.name) { dish in
//                HStack {
//                    Image(dish.imageName)
//                        .resizable()
//                        .frame(width: 50, height: 50) // Image réduite
//                        .clipShape(Circle()) // Cercle pour un effet design
//                    VStack(alignment: .leading) {
//                        Text(dish.name)
//                            .font(.headline)
//                        Text(dish.description)
//                            .font(.subheadline)
//                            .foregroundColor(.gray)
//                    }
//                }
//            }
//            .navigationTitle("Menu")
//        }
//    }
//}

