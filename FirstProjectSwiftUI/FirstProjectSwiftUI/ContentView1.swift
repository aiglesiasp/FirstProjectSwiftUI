//
//  ContentView.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 1/12/22.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        VStack {
            Text("HOLA")
            Spacer()
            Text("KEEPCODERS")
            Spacer()
            Text("ESTO ES SWIFTUI")
        }
        .font(.title)
        .frame(width: 400, height: 400)
        .background(Color.blue)
        .foregroundColor(Color.white)
        
    }
}

//MARK: Crear el preview
struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
