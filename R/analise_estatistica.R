# Script de análise estatística básica para dados agrícolas
# Culturas: Soja e Café
# Leitura dos dados de áreas e manejo a partir de arquivos CSV

# Carregar dados
areas <- read.csv("R/areas.csv")
manejos <- read.csv("R/manejos.csv")

# Calcular estatísticas básicas para área plantada
media_area <- mean(areas$area)
desvio_area <- sd(areas$area)

cat("Estatísticas de Área Plantada\n\n")
cat("Média das áreas:", media_area, "m²\n")
cat("Desvio padrão das áreas:", desvio_area, "m²\n\n")

# Calcular estatísticas básicas para produto aplicado
media_produto <- mean(manejos$total_produto)
desvio_produto <- sd(manejos$total_produto)

cat("Estatísticas de Produto Aplicado\n\n")
cat("Média dos produtos aplicados:", media_produto, "mL\n")
cat("Desvio padrão dos produtos aplicados:", desvio_produto, "mL\n\n")