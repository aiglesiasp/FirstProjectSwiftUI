//
//  ContentView7_1.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

//MARK: - VISTA
struct ContentView7_1: View {
    
    @State var showModal = false
    
    var body: some View {
        Button("Mostrar modal") {
            showModal.toggle()
        }
        .sheet(isPresented: $showModal) {
            DetailModalView(showDetail: $showModal)
        }
    }
}

//MARK: - SUBVISTA
struct DetailModalView: View {
    //recibir la referencia a memoria de showModel
    @Binding var showDetail: Bool
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        VStack {
            Text("Soy el detalle modal")
                .font(.title)
            
            Button {
                //Action here
                //showDetail.toggle()
                presentationMode.wrappedValue.dismiss()
            } label: {
                //Forma aqui
                Text("Cerrar el modal")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(8)
            }

        }
    }
}

struct ContentView7_1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView7_1()
    }
}
