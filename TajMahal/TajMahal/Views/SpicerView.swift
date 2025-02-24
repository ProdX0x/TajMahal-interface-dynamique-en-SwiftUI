//
//  SpicerView.swift
//  TajMahal
//
//  Créé par Stéphane SAULNIER le 23/02/2025.
//

// ⭐ Import du framework SwiftUI
import SwiftUI

// 🔸 Vue qui affiche le niveau de piment à l'aide d'icônes
struct SpicerView: View {
    
    var dishes: Dish // 🔹 Le plat dont on va afficher le niveau de piment
    
    // 🔸 Fonction qui retourne un nombre entre 1 et 3 en fonction du niveau de piment
    func getRating(rater: SpiceLevel) -> Int {
        if rater == .hot { // 🔹 Si le plat est "hot" (fort)
            return 3      // 🔹 Retourne 3 (3 icônes rouges)
        } else if rater == .medium { // 🔹 Si le plat est "medium" (moyen)
            return 2      // 🔹 Retourne 2 (2 icônes rouges)
        } else { // 🔹 Sinon (niveau "light")
            return 1      // 🔹 Retourne 1 (1 icône rouge)
        }
    }
    
    
    // ⭐ Début du corps de la vue
    var body: some View {
        let rating: Int = getRating(rater: dishes.spiceLevel) // 🔹 Calcule le niveau de piment du plat
        
        ZStack { // 🔸 Superposition de vues (fond + icônes)
            RoundedRectangle(cornerRadius: 11.0) // 🔹 Crée un fond arrondi
                .fill(Color.white)              // 🔹 Remplit le fond de blanc
                .frame(width: 80, height: 25)     // 🔹 Définit la taille du fond
            
            // 🔸 Affiche les icônes de piment
            HStack { // 🔹 Aligne horizontalement les icônes
                ForEach(1..<4) { index in // 🔹 Parcourt les indices 1, 2 et 3
                    Image("Spice") // 🔹 Charge l'image "Spice" depuis les assets
                        .renderingMode(.template) // 🔹 Permet de changer la couleur de l'image
                        .resizable() // 🔹 Rend l'image redimensionnable
                        .aspectRatio(contentMode: .fit) // 🔹 Conserve le ratio de l'image lors du redimensionnement
                        .frame(maxWidth: 18, maxHeight: 12) // 🔹 Définit la taille maximale de l'image
                        .foregroundStyle( // 🔹 Change la couleur de l'icône en fonction du niveau de piment
                            rating >= index ? Color.red : Color.gray // 🔹 Si rating est supérieur ou égal à l'indice, affiche rouge, sinon gris
                        )
                }
            }
        }
    }
}
