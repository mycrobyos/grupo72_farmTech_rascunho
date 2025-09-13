library(httr)
library(jsonlite)

# Carregar os dados dos arquivos CSV
areas <- read.csv("areas_export.csv")
manejos <- read.csv("manejos_export.csv")

# Renomear colunas para evitar problemas com caracteres especiais
colnames(areas) <- c("Cultura", "Area_m2")
colnames(manejos) <- c("Cultura", "Produto", "Qtde_por_m", "Total_mL")

# Calcular estatísticas básicas para áreas
cat("\nEstatísticas para Áreas:\n")
cat("\nMédia da área:", mean(areas$Area_m2), "m²\n")
cat("Desvio padrão da área:", sd(areas$Area_m2), "m²\n")

# Calcular estatísticas básicas para manejos
cat("\nEstatísticas para Manejos:\n")
cat("\nMédia do total de produto necessário:", mean(manejos$Total_mL), "mL\n")
cat("Desvio padrão do total de produto necessário:", sd(manejos$Total_mL), "mL\n")

# Instalar e carregar pacotes necessários
if (!requireNamespace("httr", quietly = TRUE)) install.packages("httr")
if (!requireNamespace("jsonlite", quietly = TRUE)) install.packages("jsonlite")


# Função para coletar dados climáticos da WeatherAPI
coletar_dados_weatherapi <- function(cidade, api_key) {
  url <- paste0("http://api.weatherapi.com/v1/current.json?key=", api_key, "&q=", cidade, "&aqi=no")
  resposta <- httr::GET(url)

  if (httr::status_code(resposta) == 200) {
    dados <- jsonlite::fromJSON(httr::content(resposta, as = "text"))
    cat("\n--- Informações Meteorológicas (WeatherAPI) ---\n")
    cat("Cidade:", dados$location$name, "\n")
    cat("Região:", dados$location$region, "\n")
    cat("País:", dados$location$country, "\n")
    cat("Temperatura:", dados$current$temp_c, "°C\n")
    cat("Sensação Térmica:", dados$current$feelslike_c, "°C\n")
    cat("Umidade:", dados$current$humidity, "%\n")
    cat("Condição Climática:", dados$current$condition$text, "\n")
  } else {
    cat("Erro ao coletar dados climáticos. Verifique a cidade ou a chave da API.\n")
  }
}

# Exemplo de uso
# Substitua "SUA_API_KEY" por uma chave válida da WeatherAPI
# Substitua "Sao Paulo" pela cidade desejada
coletar_dados_weatherapi("Sao Paulo", "SUA_API_KEY")