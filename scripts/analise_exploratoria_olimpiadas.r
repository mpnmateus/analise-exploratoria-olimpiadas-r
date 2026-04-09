# =========================================================
# ANÁLISE EXPLORATÓRIA DE DADOS - OLIMPÍADAS
# Bloco 1: organização, carregamento e visualização inicial
# =========================================================

# 1) Limpa o console (opcional, apenas visual)
# Limpa o console apenas para melhorar a visualização
cat("\014")

# 2) Carregamento da base
# Lê o arquivo results.csv e guarda os dados no objeto olympics
olympics <- read.csv("results.csv", sep = ",")

# 3) Visualização inicial
# Mostra as 6 primeiras linhas da base
head(olympics)
# Mostra as 6 últimas linhas da base
tail(olympics)
View(olympics)

# 4) Estrutura geral da base
# Mostra a dimensão da base: linhas e colunas
dim(olympics)
# Mostra os nomes das colunas
names(olympics)
# Mostra a estrutura da base e o tipo de cada coluna
str(olympics)
# Mostra um resumo estatístico/estrutural da base
summary(olympics)

# 5) Visualização direta da base (usar com cuidado)
# olympics


# =========================================================
# Bloco 2: ajuste dos dados
# =========================================================

# 1) Instala e carrega o pacote dplyr
#install.packages("dplyr")
library(dplyr)

# 2) Inspeciona alguns valores da coluna Result
head(olympics$Result, 20)

# 3) Verifica valores únicos mais comuns em Result
sort(table(olympics$Result), decreasing = TRUE)[1:20]

# 4) Cria uma cópia da base para trabalhar com segurança
olympics_ajustado <- olympics

# 5) Converte a coluna Result para numérico
olympics_ajustado$Result <- as.double(olympics_ajustado$Result)

# 6) Verifica a estrutura da base após conversão
str(olympics_ajustado)

# 7) Resume especificamente a coluna Result após conversão
summary(olympics_ajustado$Result)

# 8) Conta quantos valores NA existem em Result após conversão
sum(is.na(olympics_ajustado$Result))

# 9) Mostra as linhas em que Result ficou NA
olympics_ajustado[is.na(olympics_ajustado$Result), ]


# =========================================================
# Bloco 3: filtro do recorte analítico do desafio
# =========================================================

# 1) Filtra apenas medalhistas de ouro nos 100m masculinos
# Precisa carregar library(dplyr) para usar %>%
olympics_100m_men_gold <- olympics %>% filter(Event == "100M Men", Medal == "G")

# 2) Filtra apenas medalhistas de ouro nos 100m femininos
olympics_100m_women_gold <- olympics %>% filter(Event == "100M Women", Medal == "G")

# 3) Visualiza os dados filtrados
olympics_100m_men_gold
olympics_100m_women_gold

# 4) Verifica a estrutura dos subconjuntos
str(olympics_100m_men_gold)
str(olympics_100m_women_gold)

# 5) Converte Result para numérico apenas nos subconjuntos dos 100m
olympics_100m_men_gold$Result <- as.double(olympics_100m_men_gold$Result)
olympics_100m_women_gold$Result <- as.double(olympics_100m_women_gold$Result)

# 6) Verifica se a conversão funcionou
str(olympics_100m_men_gold)
str(olympics_100m_women_gold)

summary(olympics_100m_men_gold)
summary(olympics_100m_women_gold)

sum(is.na(olympics_100m_men_gold$Result))
sum(is.na(olympics_100m_women_gold$Result))

# 7) Ordena por ano para facilitar a análise e os gráficos
olympics_100m_men_gold <- olympics_100m_men_gold %>% arrange(Year)
olympics_100m_women_gold <- olympics_100m_women_gold %>% arrange(Year)

# 8) Confere o resultado final
olympics_100m_men_gold
olympics_100m_women_gold

# =========================================================
# Bloco 4: apresentação dos resultados com gráficos
# =========================================================

# 1) Instala o plotly (rode apenas uma vez, se ainda não tiver instalado)
#install.packages("plotly")

# 2) Carrega o pacote
library(plotly)

# 3) Gráfico intrativo - 100m masculino
grafico_100m_men <- plot_ly(
  data = olympics_100m_men_gold,
  x = ~Year,
  y = ~Result,
  type = "scatter",
  mode = "lines+markers",
  text = ~paste(
    "Ano:", Year,
    "<br>Atleta:", Name,
    "<br>País:", Nationality,
    "<br>Tempo:", Result, "s",
    "<br>Local:", Location
  ),
  hoverinfo = "text"
) %>%
  layout (
    title = "Evolução do tempo dos campeões olímpicos - 100m masculino",
    xaxis = list(title = "Ano"),
    yaxis = list(title = "Tempo (segundos)")
  )

grafico_100m_men

# 4) Gráfico interativo - 10mm feminino
grafico_100m_women <- plot_ly(
  data = olympics_100m_women_gold,
  x = ~Year,
  y = ~Result,
  type = "scatter",
  mode = "lines+markers",
  text = ~paste(
    "Ano:", Year,
    "<br>Atleta:", Name,
    "<br>País:", Nationality,
    "<br>Tempo:", Result, "s",
    "<br>Local:", Location
  ),
  hoverinfo = "text"
) %>% 
  layout(
    title = "Evolução do tempo das campeãs olímpicas - 100m feminino", 
    xaxis = list(title = "Ano"),
    yaxis = list(title = "Tempo (segundos)")
  )

grafico_100m_women
