//
//  MenuView.swift
//  TajMahal
//
//  Créé par Amandine Cousin le 31/10/2023.
//

// ⭐ Import du framework SwiftUI pour créer l'interface utilisateur
import SwiftUI

// 🔸 Vue principale qui affiche le menu du restaurant
struct MenuView: View {
    let viewModel: ViewModel = ViewModel() // 🔹 Instance du ViewModel pour accéder aux données du menu
    @Environment(\.dismiss) var dismiss   // 🔹 Permet de fermer la vue actuelle via l'environnement

    
    // ⭐ Début du corps de la vue
    var body: some View {
        ZStack { // 🔸 Superposition de vues : fond + contenu
            Color("myBackground") // 🔹 Utilise la couleur personnalisée "myBackground" définie dans Assets
                .ignoresSafeArea() // 🔹 Étend la couleur sur toute la zone de l'écran, y compris derrière la barre de navigation

            ScrollView { // 🔸 Contenu défilable (pour gérer le dépassement de contenu)
                VStack(spacing: 15) { // 🔹 Empile verticalement les éléments avec un espacement de 15 points
                    // 🔸 Section des Entrées
                    Section {
                        ForEach(viewModel.apetizerArray) { dish in // 🔹 Pour chaque plat dans le tableau des entrées
                            NavigationLink {
                                DetailsView(dishes: dish) // 🔹 Navigue vers la vue détaillée pour l'entrée sélectionnée
                            } label: {
                                MenuRow(dishes: dish) // 🔹 Affiche la ligne de menu pour l'entrée
                            }
                        }
                        .padding(.horizontal, 12) // 🔹 Ajoute un espacement horizontal de 12 points à la section
                    } header: {
                        Text("Entrées") // 🔹 Titre de la section "Entrées"
                            .font(.system(.subheadline)) // 🔹 Définit la police comme sous-titre
                            .frame(maxWidth: .infinity, alignment: .leading) // 🔹 Étend le texte sur toute la largeur et l'aligne à gauche
                            .padding(.leading, 12) // 🔹 Ajoute 12 points d'espacement à gauche
                    }

                    // 🔸 Section des Plats Principaux
                    Section {
                        ForEach(viewModel.mainCourseArray) { dish in // 🔹 Pour chaque plat dans le tableau des plats principaux
                            NavigationLink {
                                DetailsView(dishes: dish) // 🔹 Navigue vers la vue détaillée pour le plat sélectionné
                            } label: {
                                MenuRow(dishes: dish) // 🔹 Affiche la ligne de menu pour le plat
                            }
                        }
                        .padding(.horizontal, 12) // 🔹 Ajoute un espacement horizontal de 12 points à la section
                    } header: {
                        Text("Plats Principaux") // 🔹 Titre de la section "Plats Principaux"
                            .font(.system(.subheadline)) // 🔹 Définit la police comme sous-titre
                            .frame(maxWidth: .infinity, alignment: .leading) // 🔹 Étend le texte sur toute la largeur et l'aligne à gauche
                            .padding(.leading, 12) // 🔹 Ajoute 12 points d'espacement à gauche
                    }
                    // 🔸 Configuration de la barre de navigation
                    .navigationTitle("Menu") // 🔹 Définit le titre affiché dans la barre de navigation
                    .navigationBarTitleDisplayMode(.inline) // 🔹 Affiche le titre de manière compacte (en ligne)
                    .navigationBarBackButtonHidden(true) // 🔹 Cache le bouton de retour par défaut
                    .navigationBarItems(leading:
                        Button {
                            dismiss() // 🔹 Ferme la vue actuelle et retourne à la vue précédente
                        } label: {
                            Image(systemName: "chevron.backward") // 🔹 Affiche une icône de flèche vers la gauche
                        }
                    )
                    .foregroundStyle(.black) // 🔹 Définit la couleur du texte et des icônes en noir
                }
            }
        }
    }
}

// ⭐ Aperçu en temps réel dans Xcode pour tester la vue
#Preview {
    NavigationView { // 🔸 Encapsule MenuView dans une NavigationView pour activer la navigation
        MenuView() // 🔹 Affiche MenuView dans l'aperçu
    }
}
