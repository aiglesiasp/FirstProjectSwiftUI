//
//  ContentView3_1.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 1/12/22.
//

import SwiftUI

struct ContentView3_1: View {
    
    @State var imageChange = false
    
    var body: some View {
       
        VStack {
            
            switch imageChange {
            case true:
                Image(systemName: "sun.max")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 200, height: 200)
                    .padding()
            case false:
                Image(systemName: "cloud.drizzle")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 200, height: 200)
                    .padding()
            }
            
            Button {
                //TODO: action here
                imageChange.toggle()//modifica valor boolean
                
            } label: {
                HStack {
                    Image(systemName: "person")
                    Text("CAMBIAR EL TIEMPO")
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.blue)
                .font(.title)
                .cornerRadius(20)
            }
        }
        
    }
}

struct ContentView3_1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3_1()
    }
}
