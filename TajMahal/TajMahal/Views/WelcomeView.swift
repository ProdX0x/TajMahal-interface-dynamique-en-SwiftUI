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
            VStack {
                //Image restaurant
                Image("TajMahal")
                    .resizable()
                    .scaledToFit()
                    .padding()
               
                //Texte information restaurant
                HStack() {
                    VStack(alignment: .leading) {
                        Text("Restaurant Indien")
                            .font(.caption)
        
                        Text("Taj Mahal")
                            .font(.title)
                          //  .fontWeight(.bold)
                            .bold()
                    }
                    .background(Color.yellow)  //Couleur 🟡Jaune VStack Information restautant
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 100) {
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .padding()
                            .frame(width: 80, height: 80)
                            //La couleur du Logo ne change pas
                            //.foregroundColor(.black)
                    }
                    .background(Color.yellow) // Couleur 🟡Jaune du Logo
                    
                }.padding(-5)
                
                .background(Color.blue) // Couleur 🔵Bleu de la Vstack
            }
            .background(Color.red)  //Couleur 🔴Rouge arriere plan
            Spacer()

                Text("Restaurant Indien")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
            }
        VStack {
            HStack{
                Text("Mardi")
                    .font(.caption)
                Text("18:00 - 22:00")
                    .font(.caption)
            }
            
        }
//        Spacer()
        .padding(19)
        .background(Color.yellow)
                  
        
            NavigationLink {
                MenuView()
            } label : {
                Text("Acceder au Menu")
                    .font(.title2)
                 .background(Color.customRed)
                    .foregroundColor(.white)
                    .cornerRadius(6)
            }
        } 
    }

#Preview {
    WelcomeView()
}


//Page d'acceuil

//struct WelcomeView: View {
//    var body: some View {
//        NavigationView {
//            Image("TajMahal")
//            Spacer()
//               VStack {
//                Text("Restaurant Indien")
//                    .font(.caption)
//                    .padding()
//            }
//
//
//            NavigationLink {
//                          MenuView()
//                      } label : {
//                          Text("Acceder au Menu")
//                             .font(.title2)
//                              .background(Color.customRed)
//                              .foregroundColor(.white)
//                              .cornerRadius(6)
//                      }
//                }
//        }
//    }







//************ RESSOURCES *************

//Colour de fond
//Version 1 .multilineTextAlignment(.leading).background(Color.yellow.cornerRadius(50))

//Version 2 .background(Color.green)
