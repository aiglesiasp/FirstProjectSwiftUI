//
//  ContentView3.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 1/12/22.
//

import SwiftUI

struct ContentView1_3: View {
    var body: some View {
        VStack {
            HStack {
                Text("Nombre")
                Text("Keppcoder")
            }
            .padding()
            .background(Color.red)
    
            HStack {
                Text("Apellidos")
                Text("Keepcoder")
            }
            .padding()
            .background(Color.yellow)
        }
    }
}

struct ContentView2_1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1_3()
    }
}
