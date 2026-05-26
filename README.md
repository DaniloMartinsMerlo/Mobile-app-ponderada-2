# Ponderada

Aplicação mobile desenvolvida com SwiftUI que permite ao usuário analisar informações a respeito de séries, animes e desenhos.

## O que foi proposto

Para essa ponderada, deveríamos desenvolver uma tela inicial que apresentasse uma lista de programas e, ao clicar em um programa, fôssemos direcionados a uma tela com as informações detalhadas daquele programa.

## O que foi implementado

Para atender os requisitos, desenvolvemos:

- Uma view principal (ListaView) com `ScrollView` e `ForEach` para comportar um número ilimitado de programas;
- Cada programa na lista aparece em formato de card contendo ícone por tipo, nome do programa, gênero e um `ForEach` dinâmico para exibir as estrelas de avaliação;
- Ao selecionar um programa, o usuário é direcionado para a view de detalhes, que exibe: uma breve sinopse, uma fileira de badges com número de episódios, número de temporadas e status (Em exibição ou Concluído), e uma lista dos personagens principais.

Vale ressaltar que as views que se repetiam foram extraídas em componentes reutilizáveis:

- ShowCard: card exibido na tela principal com as informações do programa;
- InfoBadge: campo para exibir episódios, temporadas e status de um programa;
- CaracterRow: exibe os personagens principais do programa.

## Ir além

Para irmos além do proposto, implementamos um botão no final da tela de detalhes que, ao ser clicado, leva o usuário à página da Wikipedia daquele programa específico.

Para isso, precisamos entender como adicionar uma URL ao código Swift e utilizar o componente `Link` do SwiftUI, que permite redirecionar o usuário diretamente para um site externo ao ser pressionado.

Além disso, adicionamos uma URL para a imagem de capa de cada um dos programas e utilizamos esse link para mostrar essa imagem na tela principal, na parte onde estão os cards e dentro da página de cada programa.

## Aprendizados e Dificuldades

### Dificuldades encontradas

- ForEach com Identifiable: ficamos travados por um bom tempo tentando usar o `ForEach` para iterar sobre os personagens. O erro só foi resolvido quando entendemos que a struct precisava conformar com o protocolo `Identifiable` e a partir daí o compilador parou de reclamar e tudo funcionou.
- Estrelas dinâmicas: a exibição das estrelas de avaliação foi complicada de solucionar. Inicialmente estavam hardcodadas com sempre 5 estrelas preenchidas. A solução foi usar um `ForEach` de 1 a 5 comparando o índice com o valor arredondado da avaliação para decidir entre `star.fill` e `star`.
- Ícones corretos com SF Symbols: no início vários componentes estavam usando `Image(systemName: "document.fill")` como placeholder. Após algum tempo de pesquisa nós identificamos que precisávamos utilizar o componente `Text` para apresentar os emojis e não `Image`.
- Título que ignorava o alinhamento: em determinado momento tínhamos um `Text` dentro de um `HStack` com `Spacer()` e mesmo assim o título não ficava alinhado à esquerda como esperado. O problema estava na interação entre o `ZStack` externo e o `HStack`, e foi necessário reestruturar o layout para que o alinhamento funcionasse corretamente.
- ForEach dos personagens: além do problema com `Identifiable`, a migração do `CaracterRow` de código hardcoded (com índices fixos, inclusive com um bug que usava o índice `[1]` duas vezes) para um `ForEach` genérico exigiu cuidado para garantir que o emoji de cada personagem também fosse exibido corretamente.
- Limitação de tempo: grande parte do tempo da ponderada foi gasto no problema do `ForEach`. Isso nos deixou com pouco tempo no final e, na pressa, acabamos implementando algumas partes de uma forma que não reflete como gostaríamos e algumas soluções ficaram menos elegantes do que o planejado.
- Edição em Linux com vim: ao tentar abrir os arquivos `.swift em um computador com Linux, o VS Code não conseguia abri-los corretamente. A solução foi abrir e editar os arquivos diretamente pelo vim no terminal, o que exigiu aprender os comandos básicos de edição do editor para conseguir fazer as alterações necessárias.

### Aprendizados

Apesar das dificuldades, a atividade trouxe aprendizados concretos sobre estruturação de layouts com `VStack`, `HStack` e `ZStack`, criação de componentes reutilizáveis em SwiftUI, uso do protocolo `Identifiable` para coleções em `ForEach`, e como o `NavigationStack` gerencia a navegação entre telas. Também aprendemos a trabalhar com gradientes via `LinearGradient`, a abrir URLs externas com o componente `Link` e como importar imagens por meio do `AsyncImage`.

## Uso de IA

Utilizamos IA exclusivamente para três tarefas pontuais: a edição do arquivo `Programa.swift` para adicionar mais séries e animes além dos três fornecidos pelo professor, para obter os links da Wikipedia de cada programa adicionados e para nos ensinar como utilizar o `AsyncImage`.