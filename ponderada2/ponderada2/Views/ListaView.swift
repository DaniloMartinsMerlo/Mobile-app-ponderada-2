//
//  ListaView.swift
//  ponderada2
//
//  Created by ec10-g2 on 25/05/26.
//
import SwiftUI

struct ListaView: View {
    @State private var programas: [Programa] = [
        naruto, avatar, strangerThings,
        onepiece, demonSlayer, breakingBad,
        bobEsponja, attackOnTitan, darkSerie
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach($programas) { $programa in
                        NavigationLink {
                            ProgramaView(programa: programa)
                        } label: {
                            ShowCard(programa: programa)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Programas")
        }
    }
}

#Preview {
    ListaView()
}
