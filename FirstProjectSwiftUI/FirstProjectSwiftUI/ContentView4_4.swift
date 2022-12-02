//
//  ContentView4_4.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

struct Hero : Identifiable{
    let id: UUID = UUID()
    let name:String
}

struct ContentView4_4: View {
    let heros = [
        Hero(name: "Krillin"),
        Hero(name: "Goku"),
        Hero(name: "Vegeta")
    ]
    
    
    
    var body: some View {
       
        List {
            ForEach(heros) { hero in
                Text(hero.name)
            }
        }
    }
}

struct ContentView4_4_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4_4()
    }
}
