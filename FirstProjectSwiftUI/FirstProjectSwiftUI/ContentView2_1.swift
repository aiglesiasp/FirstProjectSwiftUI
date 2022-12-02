//
//  ContentView3.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 1/12/22.
//

import SwiftUI

struct ContentView2_1: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .resizable()
                .frame(width: 200, height: 200)
            
            Divider()
            
            Image(systemName: "person.wave.2")
                .resizable()
                .frame(width: 200, height: 200)
            
            Divider()
            
            AsyncImage(url: URL(string:"https://i.blogs.es/f7b0ed/steve-jobs/1366_2000.jpg")) {
                Imagen in
                //pintamos la imagen
                Imagen
                    .resizable()
            } placeholder: {
                //Text("Cargando Imagen...")
                ProgressView().progressViewStyle(CircularProgressViewStyle(tint: .blue))
                    .scaleEffect(4)
            }
            .frame(width: 200 , height: 200)
        }
    }
}

struct ContentView2_1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2_1()
    }
}
