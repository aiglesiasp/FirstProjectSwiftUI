//
//  ContentView4_5.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

struct ContentView4_5: View {
    
    let bestFriends = ["Juan", "Maria", "Paco", "Luis"]
    var body: some View {
        NavigationView {
            List {
                ForEach(bestFriends, id: \.self) { friends in
                    Text("\(friends)")
                }
            }
            .navigationTitle("MIS AMIGOS")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView4_5_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4_5()
    }
}
