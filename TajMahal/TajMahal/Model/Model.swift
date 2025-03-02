//
//  Model.swift
//  TajMahal
//
//  Créé par Amandine Cousin le 31/10/2023.
//

import Foundation // ⭐ Import du framework Foundation pour les fonctionnalités de base
import SwiftUI   // ⭐ Import du framework SwiftUI pour gérer l'interface utilisateur

// 🔸 Enumération des niveaux de piment disponibles pour les plats
enum SpiceLevel {
    case light   // 🔹 Piment léger
    case medium  // 🔹 Piment moyen
    case hot     // 🔹 Piment fort
}

// 🔸 Structure qui définit un plat dans le menu
struct Dish: Identifiable {
    var id = UUID()             // 🔹 Génère un identifiant unique pour chaque plat
    var name: String            // 🔹 Nom du plat
    var description: String     // 🔹 Description du plat
    var allergens: String       // 🔹 Informations sur les allergènes
    var ingredients: String     // 🔹 Liste des ingrédients utilisés
    var spiceLevel: SpiceLevel  // 🔹 Niveau de piment du plat (light, medium, hot)
    var imageName: String       // 🔹 Nom de l'image associée dans les assets
    var price: String           // 🔹 Prix du plat


    // 🔸 Propriété calculée qui charge l'image depuis les assets en utilisant le nom spécifié
    var image: Image {
        Image(imageName) // 🔹 Charge et retourne l'image correspondante à "imageName"
    }
}

