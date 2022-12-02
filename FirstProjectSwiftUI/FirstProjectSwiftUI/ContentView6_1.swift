//
//  ContentView6_1.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

//MARK: VISTA LISTA HEROES
struct ContentView6_1: View {
    let heros = [
        Hero(name: "Krillin"),
        Hero(name: "Goku"),
        Hero(name: "Vegeta")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(heros) { hero in
                    NavigationLink {
                        //vista destino
                        HeroDetail(data: hero)
                    } label: {
                        //la celda personalizada
                        Text(hero.name)
                    }
                    
                }
            }
            .navigationTitle("Heroes List")
            .toolbar {
                ToolbarItem (placement: .bottomBar){
                    Button("Filter") {}
                }
            }
        }
    }
}

//MARK: SUBVISTA- DETALLE
struct HeroDetail: View {
    var data: Hero
    
    var body: some View {
        VStack {
            Text("detalle de \(data.name)")
        }
    }
}





struct ContentView6_1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView6_1()
    }
}
