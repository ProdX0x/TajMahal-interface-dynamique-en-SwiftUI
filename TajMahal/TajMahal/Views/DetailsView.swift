//
//  DetailsView.swift
//  TajMahal
//
//  Créé par Amandine Cousin le 31/10/2023.
//


// ⭐ Import du framework SwiftUI
import SwiftUI

// 🔸 Vue qui affiche les détails d'un plat sélectionné
struct DetailsView: View {
    
    var dishes: Dish // 🔹 Le plat dont on va afficher les détails
    
    @Environment(\.dismiss) var dismiss // 🔹 Permet de fermer la vue et revenir en arrière via l'environnement

    
    
    // ⭐ Début du corps de la vue
    var body: some View {
        VStack(alignment: .leading) { // 🔸 Empile verticalement les éléments, alignés à gauche
            ZStack { // 🔸 Superpose l'image et le niveau de piment sur celle-ci
                // 🔹 Affichage de l'image du plat
                dishes.image
                    .resizable() // 🔹 Rend l'image redimensionnable
                    .aspectRatio(contentMode: .fill) // 🔹 Remplit le cadre tout en conservant le ratio de l'image
                    .frame(minWidth: 335, idealWidth: .infinity, maxWidth: .infinity,
                           minHeight: 447, idealHeight: .infinity, maxHeight: .infinity, alignment: .center) // 🔹 Définit la taille minimale et idéale de l'image
                    .cornerRadius(10.0) // 🔹 Arrondit les coins de l'image
                    .padding(.horizontal, 20) // 🔹 Ajoute un espacement horizontal de 20 points
                    
                // 🔹 Affichage du niveau de piment sur l'image
                SpicerView(dishes: dishes)
                    .position(x: 315.0, y: 25.0) // 🔹 Positionne la vue SpicerView à une position fixe sur l'image
            }
            // 🔸 Bloc contenant les détails du plat (allergènes et ingrédients)
            VStack(alignment: .leading, spacing: 15) { // 🔹 Empile verticalement et aligne à gauche avec un espacement de 15 points
                Text("Allergènes:") // 🔹 Texte fixe indiquant la section des allergènes
                    .font(.system(.subheadline)) // 🔹 Définit la police comme sous-titre
                    .foregroundStyle(Color.black) // 🔹 Utilise la couleur noire pour le texte
                Text(dishes.allergens) // 🔹 Affiche les allergènes du plat
                
                Divider() // 🔹 Ligne de séparation visuelle
                
                Text("Ingrédients:") // 🔹 Texte fixe indiquant la section des ingrédients
                    .font(.system(.subheadline)) // 🔹 Définit la police comme sous-titre
                    .foregroundStyle(Color.black) // 🔹 Utilise la couleur noire pour le texte
                Text(dishes.ingredients) // 🔹 Affiche les ingrédients du plat
            }
            .font(.system(.caption)) // 🔹 Définit la police globale pour ce bloc en style "caption"
            .foregroundStyle(Color.gray) // 🔹 Utilise la couleur grise pour le texte du bloc
            .padding(20) // 🔹 Ajoute un espacement de 20 points autour du bloc de détails
        }
        // 🔸 Configuration de la barre de navigation avec un bouton retour
        .navigationBarItems(leading:
            Button { // 🔹 Bouton pour revenir en arrière
                dismiss() // 🔹 Action qui ferme la vue actuelle
            } label: {
                Image(systemName: "chevron.backward") // 🔹 Icône de flèche vers la gauche
                Text(dishes.name) // 🔹 Affiche le nom du plat à côté de l'icône
            }
        )
        .foregroundStyle(.black) // 🔹 Définit la couleur générale du texte et des icônes en noir
        .navigationBarBackButtonHidden() // 🔹 Cache le bouton de retour par défaut pour utiliser notre bouton personnalisé
    }
}

// ⭐ Aperçu en temps réel dans Xcode pour tester la vue DetailsView
#Preview {
    DetailsView(dishes: Dish(name: "Rogan Josh",
                             description: "Agneau mijoté dans une sauce épicée", // 🔹 Description du plat
                             allergens: "Ail, oignon", // 🔹 Informations sur les allergènes
                             ingredients: "Agneau, oignons, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, huile, coriandre fraîche", // 🔹 Liste des ingrédients
                             spiceLevel: .hot, // 🔹 Niveau de piment (hot = fort)
                             imageName: "Rogan Josh", // 🔹 Nom de l'image dans les Assets
                             price: "12.00€")) // 🔹 Prix du plat
}

