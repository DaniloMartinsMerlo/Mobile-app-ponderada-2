//
//  CharacterRow.swift
//  ponderada2
//
//  Created by ec10-g2 on 25/05/26.
//

import SwiftUI

struct CaracterRow: View {
    let programa: Programa
    
    var body: some View {
        VStack(spacing: 8){
            ForEach(programa.personagem, id: \.nome){ personagem in
                ZStack{
                    RoundedRectangle(cornerRadius:10)
                        .fill(Color(.secondarySystemBackground))
                    HStack(spacing: 12){
                        Text(personagem.emoji)
                            .font(.system(size:36))
                        VStack(alignment: .leading, spacing: 2){
                            Text(personagem.nome).font(.headline)
                            Text(personagem.papel)
                                .font(.subheadline)
                                .forgroundColor(.secondary)
                        }
                        Spacer()
                    }
                    .padding()
                }
            }
        }
        .padding(.horizontal)
    }
}
