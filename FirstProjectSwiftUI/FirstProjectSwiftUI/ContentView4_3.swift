//
//  ContentView4_3.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

struct ContentView4_3: View {
    
    let heros = ["Krillin", "Goku", "Vegeta"]
    
    @State var heroSelected: String = ""
    @State var showAlert = false
    
    var body: some View {
        
        VStack {
            List {
                ForEach(heros, id: \.self) { data in
                    Text("\(data)")
                }
            }
            
            List {
                ForEach(heros, id: \.self) { data in
                    Button {
                        //Action
                        heroSelected = data //heroe seleccionado
                        showAlert = true
                    } label: {
                        Text("\(data)")
                    }
                    
                }
            }
            .alert(isPresented: $showAlert) {
                //Vista a mostrar
                Alert(title: Text("\(heroSelected)"))
            }
            
        }
        
        
    }
    
    struct ContentView4_3_Previews: PreviewProvider {
        static var previews: some View {
            ContentView4_3()
        }
    }
}
