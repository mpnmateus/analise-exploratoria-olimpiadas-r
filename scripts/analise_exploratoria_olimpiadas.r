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