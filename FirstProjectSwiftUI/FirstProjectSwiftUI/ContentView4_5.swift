//
//  ContentView4_5.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

struct ContentView4_5: View {
    
    @State var bestFriends = ["Juan", "Maria", "Paco", "Luis"]
    var body: some View {
        NavigationView {
            List {
                ForEach(bestFriends, id: \.self) { friends in
                    Text("\(friends)")
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            //botones para cada accion
                            Button {
                                //Action here
                            } label: {
                                Label {
                                    Text("Silenciar")
                                } icon: {
                                    Image(systemName: "bell.slash")
                                }
                            }
                            .tint(.red)

                        }
                }
            }
            .navigationTitle("MIS AMIGOS")
            .navigationBarTitleDisplayMode(.inline)
            .refreshable {
                //pull to refresh
                bestFriends.append("Nuevo amigo")
            }
        }
    }
}

struct ContentView4_5_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4_5()
    }
}
