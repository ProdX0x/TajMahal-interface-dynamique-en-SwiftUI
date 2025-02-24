//
//  WelcomeView.swift
//  TajMahal
//
//  Créé par Amandine Cousin le 31/10/2023.
//

import SwiftUI // ⭐ Import du framework SwiftUI pour créer l'interface utilisateur

// 🔸 Vue d'accueil du restaurant
struct WelcomeView: View {
    var body: some View { // ⭐ Début du corps de la vue
        NavigationStack { // 🔹 Permet de naviguer entre différentes vues
            VStack { // 🔹 Empile verticalement les éléments
                // 🔸 Image de présentation
                Image("TajMahal") // 🔹 Charge l'image nommée "TajMahal" depuis les Assets
                    .resizable() // 🔹 Rend l'image redimensionnable
                    .aspectRatio(contentMode: .fit) // 🔹 Conserve le ratio original de l'image tout en l'ajustant à l'espace disponible
                    .padding(.horizontal, 20) // 🔹 Ajoute 20 points d'espacement sur les côtés
                
                // 🔸 Nom du restaurant et logo
                HStack { // 🔹 Aligne horizontalement les éléments suivants
                    VStack(alignment: .leading) { // 🔹 Empile verticalement le texte, aligné à gauche
                        Text("Restaurant indian") // 🔹 Affiche le texte "Restaurant indian"
                            .foregroundColor(Color("CustomGray")) // 🔹 Applique la couleur personnalisée "CustomGray"
                        Text("Taj Mahal") // 🔹 Affiche le nom du restaurant "Taj Mahal"
                            .font(.title) // 🔹 Définit une police de type titre
                            .fontWeight(.bold) // 🔹 Met le texte en gras
                    }
                    Spacer() // 🔹 Crée un espace flexible pour pousser le contenu suivant à l'extrémité droite
                    Image("Logo") // 🔹 Charge l'image nommée "Logo" depuis les Assets
                        .resizable() // 🔹 Rend l'image redimensionnable
                        .renderingMode(.template) // 🔹 Permet de modifier la couleur de l'image
                        .frame(width: 40, height: 40) // 🔹 Définit la taille de l'image à 40x40 points
                        .foregroundColor(Color("CustomGray")) // 🔹 Applique la couleur "CustomGray" à l'image
                }
                .padding(.horizontal, 20) // 🔹 Ajoute 20 points d'espacement horizontal autour du HStack
                .padding(.bottom, 20) // 🔹 Ajoute 20 points d'espacement en bas du HStack
                
                // 🔸 Horaires d'ouverture
                HStack { // 🔹 Aligne horizontalement l'icône, le jour et les horaires
                    Image(systemName: "clock") // 🔹 Affiche l'icône d'une horloge
                        .foregroundColor(Color("CustomGray")) // 🔹 Applique la couleur "CustomGray" à l'icône
                    Text("Mardi") // 🔹 Affiche le jour "Mardi"
                        .foregroundColor(Color("CustomGray")) // 🔹 Applique la couleur "CustomGray"
                    Spacer() // 🔹 Sépare les éléments horizontalement
                    Text("11h30 – 14h30  |  18h30 – 22h00") // 🔹 Affiche les horaires d'ouverture
                        .font(.subheadline) // 🔹 Définit une police de type sous-titre
                        .foregroundColor(Color("CustomGray")) // 🔹 Applique la couleur "CustomGray"
                }
                .padding(.horizontal, 10) // 🔹 Ajoute 10 points d'espacement horizontal
                .padding(.bottom, 10) // 🔹 Ajoute 10 points d'espacement en bas
                
                // 🔸 Type de service
                HStack { // 🔹 Aligne horizontalement l'icône, le libellé et la valeur
                    Image(systemName: "fork.knife") // 🔹 Affiche l'icône de couverts
                        .foregroundColor(Color("CustomGray")) // 🔹 Applique la couleur "CustomGray" à l'icône
                    Text("Type de Service") // 🔹 Affiche le libellé "Type de Service"
                        .font(.subheadline) // 🔹 Définit la police en sous-titre
                        .foregroundColor(Color("CustomGray")) // 🔹 Applique la couleur "CustomGray"
                    Spacer() // 🔹 Crée un espace flexible
                    Text("À emporter") // 🔹 Affiche le type de service "À emporter"
                        .font(.subheadline) // 🔹 Définit la police en sous-titre
                        .foregroundColor(Color("CustomGray")) // 🔹 Applique la couleur "CustomGray"
                }
                .padding(.horizontal, 10) // 🔹 Ajoute un espacement horizontal de 10 points
                .padding(.bottom, 10) // 🔹 Ajoute un espacement en bas de 10 points
                
                // 🔸 Adresse du restaurant
                HStack { // 🔹 Aligne horizontalement l'icône et l'adresse
                    Image(systemName: "mappin.circle") // 🔹 Affiche l'icône de localisation
                    Text("12 Avenue de la Brique - 75010 Paris") // 🔹 Affiche l'adresse du restaurant
                        .font(.subheadline) // 🔹 Utilise une police de sous-titre
                        .foregroundColor(.gray) // 🔹 Applique la couleur grise au texte
                    Spacer() // 🔹 Crée un espace flexible
                }
                .padding(.horizontal, 10) // 🔹 Ajoute un espacement horizontal de 10 points
                .padding(.bottom, 10) // 🔹 Ajoute un espacement en bas de 10 points
                
                // 🔸 Site web du restaurant
                HStack { // 🔹 Aligne horizontalement l'icône et l'URL
                    Image(systemName: "globe") // 🔹 Affiche l'icône d'un globe
                    Text("www.tajmahal.fr") // 🔹 Affiche l'URL du site
                        .font(.subheadline) // 🔹 Utilise une police de sous-titre
                    Spacer() // 🔹 Crée un espace flexible
                }
                .padding(.horizontal, 10) // 🔹 Ajoute un espacement horizontal de 10 points
                .padding(.bottom, 10) // 🔹 Ajoute un espacement en bas de 10 points
                
                // 🔸 Numéro de téléphone du restaurant
                HStack { // 🔹 Aligne horizontalement l'icône et le numéro
                    Image(systemName: "phone") // 🔹 Affiche l'icône d'un téléphone
                        .foregroundColor(Color("CustomGray")) // 🔹 Applique la couleur "CustomGray" à l'icône
                    Text("06 123 456 78") // 🔹 Affiche le numéro de téléphone
                        .font(.subheadline) // 🔹 Utilise une police de sous-titre
                        .foregroundColor(Color("CustomGray")) // 🔹 Applique la couleur "CustomGray" au texte
                    Spacer() // 🔹 Crée un espace flexible
                }
                .padding(.horizontal, 10) // 🔹 Ajoute un espacement horizontal de 10 points
                .padding(.bottom, 10) // 🔹 Ajoute un espacement en bas de 10 points
                
                Spacer() // 🔸 Pousse le bouton vers le bas
                
                // 🔸 Bouton pour accéder au menu
                NavigationLink { // 🔹 Crée un lien de navigation vers une autre vue
                    MenuView() // 🔹 Ouvre la vue du menu lors du clic
                } label: {
                    Text("Accéder au menu") // 🔹 Texte du bouton
                        .foregroundColor(.white) // 🔹 Définit la couleur du texte en blanc
                        .fontWeight(.bold) // 🔹 Met le texte en gras
                }
                .frame(minWidth: 350, minHeight: 40, alignment: .center) // 🔹 Définit la taille minimale du bouton
                .background(Color.customRed) // 🔹 Applique la couleur "customRed" comme fond du bouton
                .cornerRadius(10) // 🔹 Arrondit les coins du bouton
                .padding([.top, .horizontal], 20) // 🔹 Ajoute 20 points d'espacement en haut et sur les côtés
            }
        }
    }
}

// ⭐ Aperçu en temps réel dans Xcode
#Preview {
    WelcomeView() // 🔹 Affiche la vue d'accueil pour prévisualisation
}

////************ RESSOURCES *************
// (Les exemples de couleurs en commentaire ont été laissés pour référence)
