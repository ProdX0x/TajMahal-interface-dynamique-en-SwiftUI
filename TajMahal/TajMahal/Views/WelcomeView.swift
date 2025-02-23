//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI
//********* Page d'acceuil avec couleur ********

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            
            //Image de presentation
            Image("TajMahal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 20)
            
            // Nom du restaurant
            HStack {
                VStackLayout(alignment: .leading){
                    Text("Restaurant indian")
                        .foregroundColor(Color("CustomGray"))
                    Text("Taj Mahal")
                        .font(.title)
                        .fontWeight(.bold)
                       
                }
                Spacer()
                
                // logo du restaurant
                Image("Logo")
                    .resizable()
                    .renderingMode(.template)
                //.aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color("CustomGray")) // Couleur grise pour le logo
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 20)
            // .background(Color.yellow.opacity(0.9))
            
            //Informations et Coordonnées du restaurant
            HStack {
                Image(systemName: "clock")
                    .foregroundColor(Color("CustomGray"))
                Text("Mardi")
                    .foregroundColor(Color("CustomGray"))
                Spacer()
                Text("11h30 – 14h30  |  18h30 – 22h00")
                    .font(.subheadline)
                    .foregroundColor(Color("CustomGray"))
                
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
            
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundColor(Color("CustomGray"))
                Text("Type de Service")
                    .font(.subheadline)
                    .foregroundColor(Color("CustomGray"))
                Spacer()
                Text("À emporter")
                    .font(.subheadline)
                    .foregroundColor(Color("CustomGray"))
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
            
            //.background(Color.black.opacity(0.2))
            
            HStack {
                Image(systemName: "mappin.circle")
                Text("12  Avenue de la Brique - 75010 Paris")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
            // .background(Color.yellow.opacity(0.9))
            
            
            HStack {
                Image(systemName: "globe")
                Text("www.tajmahal.fr")
                    .font(.subheadline)
                
                Spacer()
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
            
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(Color("CustomGray"))
                Text("06 123 456 78")
                    .font(.subheadline)
                    .foregroundColor(Color("CustomGray"))
                Spacer()
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
            //.background(Color.yellow.opacity(0.9))
            
            Spacer()
            
            // Bouton "Accéder au menu"
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                // .background(Color.customRed.opacity(0.9))
            }
            .frame(minWidth: 350, minHeight: 40, alignment: .center)
            .background(Color.customRed)
            .cornerRadius(10)
            .padding([.top, .horizontal], 20)
        }
    }
}

// 🖥️ Aperçu en temps réel
#Preview {
    WelcomeView()
}








//************ RESSOURCES *************

//Colour de fond
//Version 1 .multilineTextAlignment(.leading).background(Color.yellow.cornerRadius(50))

//Version 2 .background(Color.green)
