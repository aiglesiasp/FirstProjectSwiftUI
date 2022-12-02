//
//  ContentView8_1.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

struct ContentView8_1: View {
    
    @State var name: String = ""
    @State var apell1: String = ""
    @State var apell2: String = ""
    @State var hasChildren: Bool = false
    @State var selectedCategory: String = "Analista"
    
    private var categories = ["Analista","Programador","SwiftUIDeveloper"]
    
    
    var body: some View {
        NavigationView {
            Form() {
                //SECCION1 - TEXTFIELD
                Section("DATOS EMPLEADO") {
                    TextField("Nombre", text: $name)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    TextField("Apellido1", text: $apell1)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    TextField("Apellido2", text:$apell2)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                }
                //SECCION 2 - TOGGLE
                Section("FAMILIA") {
                    Toggle("Tiene hijos", isOn: $hasChildren)
                }
                //SECCION 3 - PICKER
                Section("DATOS LABORABLES") {
                    Picker(selection: $selectedCategory, label: Text("Categorias")) {
                        ForEach(categories, id: \.self) { data in
                            Text("\(data)")
                        }
                    }
                    .pickerStyle(.automatic)
                }
                //SECCION 4 - BOTON
                Section("") {
                    Button{
                        
                        
                    } label: {
                        HStack {
                            Spacer()
                            Text("Validar")
                            Spacer()
                        }
                    }
                    .foregroundColor(.white)
                }
                .listRowBackground(Color.orange)
            }
        }
    }
}

struct ContentView8_1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView8_1()
    }
}
