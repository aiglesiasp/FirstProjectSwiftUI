//
//  ContentView5_1.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

struct ContentView5_1: View {
    var body: some View {
        TabView {
            ContentView2_2()
                .tabItem {
                    Image(systemName: "star")
                    Text("Boton")
                }
            
            ContentView2_1()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Lista")
                }
        }
    }
}

struct ContentView5_1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView5_1()
    }
}
