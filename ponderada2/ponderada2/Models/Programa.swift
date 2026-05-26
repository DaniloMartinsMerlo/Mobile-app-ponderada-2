//
//  Programa.swift
//  ponderada2
//
//  Created by ec10-g2 on 25/05/26.
//
import SwiftUI
 
struct Programa: Identifiable {
    let id = UUID()
    let nome: String
    let tipo: String       // "Anime" | "Desenho" | "Serie"
    let emoji: String
    let genero: String
    let sinopse: String
    let episodios: Int
    let temporadas: Int
    let avaliacao: Double  // 0.0 - 5.0
    let status: String     // "Em exibicao" | "Concluido"
    let personagens: [(nome: String, papel: String, emoji: String)]
    let wikipediaURL: String
    let capaURL: String    // URL da imagem de capa
}
 
// ─── Dados fornecidos pelo professor — nao alterar ───────────────────────────
 
let naruto = Programa(
    nome: "Naruto", tipo: "Anime", emoji: "\u{1F9C6}",
    genero: "Acao - Aventura",
    sinopse: "Naruto Uzumaki e um jovem ninja que sonha em se tornar Hokage, o lider maximo de sua aldeia.",
    episodios: 720, temporadas: 5, avaliacao: 5.0,
    status: "Concluido",
    personagens: [
        ("Naruto Uzumaki", "Protagonista", "\u{1F9C6}"),
        ("Sasuke Uchiha",  "Rival",        "\u{26A1}"),
        ("Sakura Haruno",  "Companheira",  "\u{1F338}")
    ],
    wikipediaURL: "https://pt.wikipedia.org/wiki/Naruto_(anime)",
    capaURL: "https://upload.wikimedia.org/wikipedia/pt/d/d2/Naruto_vol._01.jpg"
)
 
let avatar = Programa(
    nome: "Avatar: A Lenda de Aang", tipo: "Desenho", emoji: "\u{1F30A}",
    genero: "Aventura - Fantasia",
    sinopse: "Aang e o Avatar, mestre dos quatro elementos, destinado a trazer a paz ao mundo em guerra.",
    episodios: 61, temporadas: 3, avaliacao: 5.0,
    status: "Concluido",
    personagens: [
        ("Aang",   "Protagonista", "\u{1F30A}"),
        ("Katara", "Aliada",       "\u{1F4A7}"),
        ("Zuko",   "Antagonista",  "\u{1F525}")
    ],
    wikipediaURL: "https://pt.wikipedia.org/wiki/Avatar:_A_Lenda_de_Aang",
    capaURL: "https://upload.wikimedia.org/wikipedia/pt/b/b0/Avatar-Teaser-Poster.jpg"
)
 
let strangerThings = Programa(
    nome: "Stranger Things", tipo: "Serie", emoji: "\u{1F526}",
    genero: "Terror - Ficcao Cientifica",
    sinopse: "Um grupo de amigos descobre forcas sobrenaturais e experimentos secretos em sua cidade.",
    episodios: 34, temporadas: 4, avaliacao: 4.7,
    status: "Em exibicao",
    personagens: [
        ("Eleven",      "Protagonista", "\u{1F526}"),
        ("Mike Wheeler","Lider",        "\u{1F9D1}"),
        ("Demogorgon",  "Antagonista",  "\u{1F479}")
    ],
    wikipediaURL: "https://pt.wikipedia.org/wiki/Stranger_Things",
    capaURL: "https://upload.wikimedia.org/wikipedia/pt/2/29/Stranger_Things_Temporada_1_Poster.jpg"
)
 
// ─── Programas adicionais ─────────────────────────────────────────────────────
 
let onepiece = Programa(
    nome: "One Piece", tipo: "Anime", emoji: "\u{2693}",
    genero: "Acao - Aventura",
    sinopse: "Monkey D. Luffy parte para o mar em busca do lendario tesouro One Piece e do titulo de Rei dos Piratas.",
    episodios: 1110, temporadas: 21, avaliacao: 5.0,
    status: "Em exibicao",
    personagens: [
        ("Monkey D. Luffy", "Protagonista", "\u{1F3F4}"),
        ("Roronoa Zoro",    "Vice-capitao", "\u{2694}"),
        ("Nami",            "Navegadora",   "\u{1F5FA}")
    ],
    wikipediaURL: "https://pt.wikipedia.org/wiki/One_Piece_(anime)",
    capaURL: "https://upload.wikimedia.org/wikipedia/pt/f/ff/One_Piece_vol._01.jpg"
)
 
let demonSlayer = Programa(
    nome: "Demon Slayer", tipo: "Anime", emoji: "\u{1F30A}",
    genero: "Acao - Sobrenatural",
    sinopse: "Tanjiro Kamado busca a cura para sua irma transformada em demonio enquanto se torna um poderoso Matador de Demonios.",
    episodios: 55, temporadas: 4, avaliacao: 4.9,
    status: "Em exibicao",
    personagens: [
        ("Tanjiro Kamado", "Protagonista",  "\u{1F525}"),
        ("Nezuko Kamado",  "Irma/Demonio",  "\u{1F338}"),
        ("Zenitsu Agatsuma","Companheiro",  "\u{26A1}")
    ],
    wikipediaURL: "https://pt.wikipedia.org/wiki/Demon_Slayer:_Kimetsu_no_Yaiba",
    capaURL: "https://upload.wikimedia.org/wikipedia/pt/4/45/Kimetsu_no_Yaiba_%28capa_do_volume_1%29.png"
)
 
let attackOnTitan = Programa(
    nome: "Attack on Titan", tipo: "Anime", emoji: "\u{1F9F1}",
    genero: "Acao - Distopia",
    sinopse: "A humanidade sobrevive atras de muros gigantescos para se proteger de titãs devoravereis. Eren Yeager jura acabar com eles apos uma tragedia pessoal.",
    episodios: 94, temporadas: 4, avaliacao: 4.9,
    status: "Concluido",
    personagens: [
        ("Eren Yeager",  "Protagonista",  "\u{1F9F1}"),
        ("Mikasa Ackerman","Aliada",      "\u{1F5E1}"),
        ("Armin Arlert", "Estrategista",  "\u{1F4DA}")
    ],
    wikipediaURL: "https://pt.wikipedia.org/wiki/Attack_on_Titan",
    capaURL: "https://upload.wikimedia.org/wikipedia/pt/e/e7/SnK_Volume1.png"
)
 
let breakingBad = Programa(
    nome: "Breaking Bad", tipo: "Serie", emoji: "\u{2697}",
    genero: "Drama - Crime",
    sinopse: "Walter White, professor de quimica com cancer terminal, se torna fabricante de metanfetamina para garantir o futuro financeiro da familia.",
    episodios: 62, temporadas: 5, avaliacao: 4.9,
    status: "Concluido",
    personagens: [
        ("Walter White", "Protagonista", "\u{2697}"),
        ("Jesse Pinkman","Parceiro",     "\u{1F6BC}"),
        ("Hank Schrader","Antagonista",  "\u{1F46E}")
    ],
    wikipediaURL: "https://pt.wikipedia.org/wiki/Breaking_Bad",
    capaURL: "https://m.media-amazon.com/images/I/61EdNgbduqL._AC_UF894,1000_QL80_.jpg"
)
 
let darkSerie = Programa(
    nome: "Dark", tipo: "Serie", emoji: "\u{1F300}",
    genero: "Ficcao Cientifica - Misterio",
    sinopse: "Quatro familias interconectadas desvendam uma conspiracao de viagem no tempo que abrange varias geracoes em uma pequena cidade alema.",
    episodios: 26, temporadas: 3, avaliacao: 4.8,
    status: "Concluido",
    personagens: [
        ("Jonas Kahnwald", "Protagonista", "\u{1F300}"),
        ("Claudia Tiedemann","Aliada",     "\u{231B}"),
        ("Adam",           "Antagonista",  "\u{1F47E}")
    ],
    wikipediaURL: "https://pt.wikipedia.org/wiki/Dark_(série_de_televisão)",
    capaURL: "https://m.media-amazon.com/images/I/A1liQf7C9LL._AC_SX679_.jpg"
)
 
let bobEsponja = Programa(
    nome: "Bob Esponja", tipo: "Desenho", emoji: "\u{1F9FD}",
    genero: "Comedia - Aventura",
    sinopse: "Bob Esponja e seus amigos vivem aventuras divertidas e improváveis na cidade submarina de Fundo do Mar.",
    episodios: 280, temporadas: 14, avaliacao: 4.6,
    status: "Em exibicao",
    personagens: [
        ("Bob Esponja",  "Protagonista", "\u{1F9FD}"),
        ("Patrick Estrela","Melhor Amigo","\u{2B50}"),
        ("Lula Molusco", "Vizinho",      "\u{1F419}")
    ],
    wikipediaURL: "https://pt.wikipedia.org/wiki/Bob_Esponja_Calça_Quadrada",
    capaURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/SpongeBob_SquarePants_with_2023_Nickelodeon_Logo.png/1920px-SpongeBob_SquarePants_with_2023_Nickelodeon_Logo.png"
)
