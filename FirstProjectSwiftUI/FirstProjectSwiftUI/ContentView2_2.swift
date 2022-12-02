//
//  ContentView2_2.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 1/12/22.
//

import SwiftUI

struct ContentView2_2: View {
    var body: some View {
        ZStack {
            //imagen de assets
            Image(decorative: "linterna")
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(50)
            
            //imagen para el relleno
            Image(decorative: "")
                .resizable()
                .background(Color.gray)
                .frame(width: 250, height: 250)
                .cornerRadius(50)
                .opacity(0.5)
            
            //texto en el relleno
            Text("Linterna Verde")
                .font(.title)
                .foregroundColor(Color.white)
        }
    }
}

struct ContentView2_2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2_2()
    }
}
