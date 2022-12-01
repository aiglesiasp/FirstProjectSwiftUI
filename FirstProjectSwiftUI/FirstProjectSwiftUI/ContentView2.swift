//
//  ContentView2.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 1/12/22.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        HStack {
            Text("Mi nombre es")
                .bold()
            Text("Steve Jobs")
                .font(.title)
                .foregroundColor(Color.blue)
        }
        .frame(width: 300, height: 300)
        .background(Color.yellow)
        .border(Color.blue)
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
