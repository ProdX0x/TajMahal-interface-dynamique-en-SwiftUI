//
//  ViewModel.swift
//  TajMahal
//
//  Créé par Amandine Cousin le 07/11/2023.
//


// ⭐ Import du framework Foundation pour les fonctionnalités de base
import Foundation

// 🔸 Structure qui gère les données du menu
struct ViewModel {
    
    // 🔸 Tableau des entrées du menu
    let apetizerArray: [Dish] = [
        // 🔹 Premier plat : Samosas aux légumes
        Dish(name: "Samosas aux légumes", // 🔹 Nom du plat
             description: "Délicieux chaussons frits garnis de légumes épicés", // 🔹 Description
             allergens: "Farine de blé", // 🔹 Informations sur les allergènes
             ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", // 🔹 Liste des ingrédients
             spiceLevel: .light, // 🔹 Niveau de piment (léger)
             imageName: "Samosas", // 🔹 Nom de l'image dans les Assets
             price: "5.50€"), // 🔹 Prix du plat
        
        // 🔹 Deuxième plat : Pakoras
        Dish(name: "Pakoras",
             description: "Beignets de légumes enrobés de pâte épicée et frits",
             allergens: "Sans allergènes majeurs",
             ingredients: "Légumes assortis (aubergines, oignons, épinards), farine de pois chiches, épices, huile",
             spiceLevel: .medium, // 🔹 Niveau de piment (moyen)
             imageName: "Pakoras",
             price: "5.00€"),
        
        // 🔹 Troisième plat : Aloo Tikki
        Dish(name: "Aloo Tikki",
             description: "Galettes de pommes de terre épicées et croustillantes",
             allergens: "Sans allergènes majeurs",
             ingredients: "Pommes de terre, épices, farine de pois chiches",
             spiceLevel: .medium, // 🔹 Niveau de piment (moyen)
             imageName: "Aloo",
             price: "5.50€")
    ]
    
    // 🔸 Tableau des plats principaux du menu
    let mainCourseArray: [Dish] = [
        // 🔹 Premier plat principal : Chicken Tikka Masala
        Dish(name: "Chicken Tikka Masala",
             description: "Poulet mariné, grillé et servi dans une sauce masala",
             allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon",
             ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche",
             spiceLevel: .hot, // 🔹 Niveau de piment (moyen)
             imageName: "Tikka Masala",
             price: "13.00€"),
        
        // 🔹 Deuxième plat principal : Biryani aux légumes
        Dish(name: "Biryani aux légumes",
             description: "Riz parfumé cuit avec des légumes et des épices",
             allergens: "Noix de cajou, riz",
             ingredients: "Riz basmati, légumes assortis (carottes, petits pois, haricots verts), noix de cajou, raisins secs, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre",
             spiceLevel: .medium, // 🔹 Niveau de piment (moyen)
             imageName: "Biryani",
             price: "10.50€"),
        
        // 🔹 Troisième plat principal : Rogan Josh
        Dish(name: "Rogan Josh",
             description: "Agneau mijoté dans une sauce épicée",
             allergens: "Ail, oignon",
             ingredients: "Agneau, oignons, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, huile, coriandre fraîche",
             spiceLevel: .hot, // 🔹 Niveau de piment (fort)
             imageName: "Rogan Josh",
             price: "12.00€")
    ]
}

