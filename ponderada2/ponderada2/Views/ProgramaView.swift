//
//  ProgramaView.swift
//  ponderada2
//
//  Created by ec10-g2 on 25/05/26.
//
import SwiftUI
struct ProgramaView: View {
    let programa: Programa
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // TODO E: ZStack com hero (fundo + emoji + overlay)
                //         badge de tipo + nome em cima do hero
                ZStack{
                    Rectangle().fill(getcolor(tipo: programa.tipo)).frame(height: 250)
                    Image(systemName: "document.fill")
                    VStack{
                        Spacer()
                        Retangle()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [
                                        .black.opacity(0.75)
                                        .black.opacity(0.3)
                                        .clear
                                    ]),
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                            )
                            .frame(height: 140)
                        }

                        VStack{
                            Spacer()
                            HStack{
                                VStack(alignment: .leading, spacing: 4) {
                                    ZStack(){
                                        Capsule()
                                            .fill(getcolor(tipo: programa.tipo))
                                            .frame(width: 80, height: 26)
                                        Text(program.tipo)
                                            .font(.caption)
                                            .foregroundColot(.white)
                                    }
                                    Text(programa.nome)
                                        .foregroundColor(.white)
                                        .font(.title)
                                }.padding(12)
                                Spacer()
                            }
                        }
                    }
                
                // TODO F: secao Sinopse (Text com naruto.sinopse)
                Text("Sinopse")
                    .font(.title)
                ZStack{
                    RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2)
                    Text(programa.sinopse).padding(10)
                }.padding(10)
                Divider()
                // TODO G: HStack com 3x InfoBadge
                //         (episodios, temporadas, status)
                Text("Informações").font(Font.title)
                InfoBadge(programa: programa)
                Divider()
                
                // TODO H: secao Personagens
                //         ForEach sobre naruto.personagens
                //         -> CharacterRow para cada um
                
                Text("Personagens Principais").font(.title)
                CaracterRow(programa: programa)
                
                NavigationLink{
                    ListaView()
                }label:{
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(.orange).opacity(0.2)
                        Text("Ver todos os episodios").padding(10)
                    }.padding(10)
                    
                }

            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
    }

}
#Preview {
    ProgramaView(programa: avatar)
}
