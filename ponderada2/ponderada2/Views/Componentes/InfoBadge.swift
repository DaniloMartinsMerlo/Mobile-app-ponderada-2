//
//  InfoBadge.swift
//  ponderada2
//
//  Created by ec10-g2 on 25/05/26.
//

import SwiftUI

struct InfoBadge: View {
    let programa: Programa
 
    var body: some View {
        HStack{
             ZStack{
                 Rectangle().fill(Color(.orange)).opacity(0.2).frame(height: 85)
                 VStack{
                     Image(systemName: "tv.inset.filled")
                     Text(String(programa.episodios))
                     Text("Episódios")
                 }
             }
            ZStack{
                Rectangle().fill(Color(.green)).opacity(0.2).frame(height: 85)
                VStack{
                    Image(systemName: "film.stack")
                    Text(String(programa.temporadas))
                    Text("Temporadas")
                }
            }
            ZStack{
                Rectangle().fill(Color(.blue)).opacity(0.2).frame(height: 85)
                VStack{
                    Image(systemName: "clock.arrow.circlepath")
                    Text("Status")
                    Text(String(programa.status))
                    
                }
            }
        }
    
    }
}
