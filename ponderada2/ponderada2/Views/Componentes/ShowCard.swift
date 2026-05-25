//
//  ShowCard.swift
//  ponderada2
//
//  Created by ec10-g2 on 25/05/26.
//
import SwiftUI

struct ShowCard: View {
    let programa: Programa
 
    var body: some View {
        HStack(spacing: 12) {
            // TODO A: barra lateral colorida por tipo
            
            Rectangle().fill(getColor(tipo: programa.tipo)).frame(width: 6)
            ZStack {
                RoundedRectangle(cornerRadius: 25).fill(getColor(tipo: programa.tipo).opacity(0.5)).frame(width: 100)
                Image(systemName: "tv.inset.filled")
            }

            
            VStack(alignment: .leading, spacing: 4) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10).fill(Color(getColor(tipo: programa.tipo))).frame(height: 30)
                    Text(programa.tipo)
                }.frame(width: 75)

                Text(programa.nome).font(Font.title)
                Text(programa.genero)
                HStack(spacing: 2) {
                    ForEach(0..<5){ index in
                        Image(systemName: index < Int(programa.avaliacao.rounded()) ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                    }
                    Text(String(programa.avaliacao)
                        .foregroundColor(.secondary)
                }
            }
            Spacer()
            
            Image(systemName: "chevron.right").padding(10)
        }
        .background(Color(.systemBackground))
        .cornerRadius(16)
    }
}

func getColor(tipo: String) -> Color {
    switch tipo {
        case "Anime":
            return .orange
        case "Desenho":
            return .blue
        case "Serie":
            return .purple
        default:
            return .gray
    }
}

#Preview {
    ShowCard(programa: naruto)
}
