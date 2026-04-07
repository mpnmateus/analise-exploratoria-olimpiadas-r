# Análise Exploratória de Dados com R - Olimpíadas

Este projeto foi desenvolvido como parte de um desafio acadêmico com o objetivo de praticar análise exploratória de dados utilizando a linguagem R.

A base utilizada contém resultados de provas de atletismo dos Jogos Olímpicos entre 1896 e 2016. A análise foi direcionada para a prova dos 100 metros, com foco na evolução dos tempos dos medalhistas de ouro ao longo das edições olímpicas, separando homens e mulheres.

## Objetivos do projeto

- carregar e visualizar os dados;
- ajustar tipos de dados;
- filtrar informações relevantes;
- analisar a evolução dos tempos dos campeões olímpicos dos 100 metros;
- apresentar os resultados por meio de gráficos;
- registrar conclusões a partir da análise.

## Tecnologias utilizadas

- R
- RStudio
- dplyr
- plotly

## Estrutura do projeto

- `data/`: base de dados utilizada na análise;
- `scripts/`: script principal da análise exploratória;
- `output/`: gráficos ou resultados exportados;
- `README.md`: documentação do projeto.

## Etapas realizadas

1. Carregamento da base `results.csv`;
2. Visualização inicial dos dados;
3. Verificação da estrutura das colunas;
4. Conversão da coluna `Result` para tipo numérico;
5. Filtragem dos medalhistas de ouro nos 100 metros;
6. Separação entre categorias masculina e feminina;
7. Geração de gráficos para análise da evolução dos tempos;
8. Interpretação dos resultados.

## Principais conclusões

- Os tempos dos campeões olímpicos dos 100 metros tendem a melhorar ao longo das décadas;
- Há uma redução progressiva do tempo dos vencedores, indicando evolução de preparação física, técnica, treinamento e contexto esportivo;
- A análise também evidencia diferenças históricas entre as provas masculinas e femininas e a consolidação da participação feminina ao longo do tempo.

## Como executar

1. Abra o projeto no RStudio;
2. Instale os pacotes necessários:
   - `dplyr`
   - `plotly`
3. Execute o script em `scripts/analise_exploratoria_olimpiadas.R`.

## Fonte dos dados

Base: Olympic Track & Field Results