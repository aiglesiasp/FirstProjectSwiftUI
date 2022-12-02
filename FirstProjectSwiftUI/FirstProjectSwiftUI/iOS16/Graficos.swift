//
//  Graficos.swift
//  FirstProjectSwiftUI
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI
import Charts

struct Values: Identifiable {
    let id: UUID = UUID()
    let title: String
    let value: Int
    let color: Color
}

struct Graficos: View {
    
    var vals: [Values] = [
        Values(title: "Goku", value: 100, color: .red),
        Values(title: "Krillin", value: 50, color: .orange),
        Values(title: "Vegeta", value: 85, color: .blue),
        Values(title: "Freizer", value: 95, color: .purple)
    ]
    var body: some View {
        VStack {
            Text("Unidades de combate")
            Chart {
                ForEach(vals) { val in
                    BarMark(x:.value("", val.title), y: .value("", val.value))
                        .foregroundStyle(val.color)
                }
            }
            Divider()
            Chart {
                ForEach(vals) { val in
                    PointMark(x:.value("", val.title), y: .value("", val.value))
                        .foregroundStyle(val.color)
                }
            }
        }
    }
}

struct Graficos_Previews: PreviewProvider {
    static var previews: some View {
        Graficos()
    }
}
