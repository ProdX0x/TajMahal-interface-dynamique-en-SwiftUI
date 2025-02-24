//
//  MenuRowView.swift
//  TajMahal
//
//  Créé par Stéphane SAULNIER le 23/02/2025.
//

// ⭐ Import du framework SwiftUI pour créer l'interface utilisateur
import SwiftUI

// 🔸 Vue qui représente une ligne du menu pour un plat
struct MenuRow: View {
    
    var dishes: Dish // 🔹 Le plat à afficher dans cette ligne

    
    // ⭐ Début du corps de la vue
    var body: some View {
        HStack { // 🔸 Aligne horizontalement l'image et les informations du plat
            // 🔹 Affichage de l'image du plat
            dishes.image
                .resizable() // 🔹 Rendre l'image redimensionnable
                .aspectRatio(contentMode: .fill) // 🔹 Remplit le cadre en gardant le ratio de l'image
                .frame(width: 120, height: 90) // 🔹 Définit la taille de l'image
                .cornerRadius(10) // 🔹 Arrondit les coins de l'image
            
            // 🔸 Bloc contenant les informations textuelles du plat
            VStack(alignment: .leading, spacing: 10) { // 🔹 Empile verticalement les textes et aligne à gauche
                Text(dishes.name) // 🔹 Affiche le nom du plat
                    .font(.system(.callout)) // 🔹 Définit la police du nom
                    .foregroundStyle(Color.black) // 🔹 Utilise la couleur noire pour le texte
                
                Text(dishes.description) // 🔹 Affiche la description du plat
                    .font(.system(.caption)) // 🔹 Définit la police de la description
                    .foregroundStyle(Color.black) // 🔹 Utilise la couleur noire pour le texte
                    .frame(maxWidth: .infinity, alignment: .leading) // 🔹 Étend le texte sur toute la largeur disponible, aligné à gauche
                    .multilineTextAlignment(.leading) // 🔹 Assure un alignement à gauche sur plusieurs lignes
                
                HStack { // 🔸 Ligne pour le prix et le niveau de piment
                    Text(dishes.price) // 🔹 Affiche le prix du plat
                        .font(.system(.caption)) // 🔹 Définit la police pour le prix
                        .foregroundStyle(Color.black) // 🔹 Utilise la couleur noire pour le texte
                    
                    Spacer() // 🔹 Crée un espace flexible entre le prix et le niveau de piment
                    
                    SpicerView(dishes: dishes) // 🔹 Affiche le niveau de piment via la vue SpicerView
                }
            }
            .padding(.horizontal) // 🔹 Ajoute un espacement horizontal autour du bloc d'informations
            .font(.system(size: 12)) // 🔹 Définit une taille de police globale pour ce bloc
            .baselineOffset(1.0) // 🔹 Ajuste l'alignement vertical du texte
        }
        .padding(10) // 🔹 Ajoute un espacement autour de toute la ligne de menu
        .background(.white) // 🔹 Définit un fond blanc pour la ligne
        .clipShape(RoundedRectangle(cornerRadius: 10)) // 🔹 Arrondit les coins de la ligne pour un style moderne
    }
}
