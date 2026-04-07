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

# 1) Carrega o pacote dplyr
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