//
//  ContentView4_1.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

struct ContentView4_2: View {
    
    let heros = ["Krillin", "Goku", "Vegeta"]
    
    var body: some View {
            List {
                ForEach(heros, id: \.self) { data in
                    Text("\(data)")
                }
            }
    }
    
    //Control del TAP en cada elemento
    
}

struct ContentView4_2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4_2()
    }
}
