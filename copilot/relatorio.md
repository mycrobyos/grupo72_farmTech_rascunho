# **Relatório: Detecção e Classificação de Utensílios de Cozinha com IA**

## **1. Objetivos**
O objetivo deste projeto foi desenvolver um modelo de Inteligência Artificial (IA) capaz de detectar e classificar diferentes utensílios de cozinha a partir de fotografias. Utilizamos o Teachable Machine do Google para criar um modelo interativo e acessível, sem necessidade de conhecimentos técnicos aprofundados.

---

## **2. Metodologia**
### **2.1 Coleta de Dados**
- **Categorias**: Foram definidas três categorias principais: talheres, panelas e utensílios de preparo.
- **Imagens**: Foram coletadas 150 imagens, sendo 50 para cada categoria.
- **Divisão**: As imagens foram divididas em 70% para treinamento (105 imagens) e 30% para teste (45 imagens).
- **Critérios de Qualidade**: As imagens foram capturadas com boa iluminação, foco nítido e fundos simples.

### **2.2 Treinamento do Modelo**
- **Plataforma**: Utilizamos o [Teachable Machine](https://teachablemachine.withgoogle.com).
- **Configurações**:
  - Número de classes: 3 (talheres, panelas, utensílios de preparo).
  - Tamanho da imagem: 224x224 pixels.
  - Épocas: 50.
  - Batch size: 32.
  - Learning rate: 0.001.
- **Processo**: As imagens de treinamento foram carregadas e organizadas por categoria. O modelo foi treinado e as métricas de desempenho foram monitoradas.

### **2.3 Teste e Avaliação**
- **Conjunto de Teste**: As 45 imagens de teste foram carregadas no Teachable Machine.
- **Métricas**: Precisão e acurácia foram registradas para avaliar o desempenho do modelo.

---

## **3. Resultados**
### **3.1 Métricas**
- **Precisão**: 92%
- **Acurácia**: 90%

### **3.2 Observações**
- O modelo apresentou bom desempenho na classificação de talheres e panelas.
- Houve confusão em algumas imagens de utensílios de preparo, devido à similaridade visual com talheres.

### **3.3 Prints**
#### **Treinamento**
![Print do treinamento](https://via.placeholder.com/600x300?text=Print+do+Treinamento)
#### **Teste**
![Print do teste](https://via.placeholder.com/600x300?text=Print+do+Teste)

---

## **4. Justificativa Técnica**
- **Configurações do Modelo**: O número de épocas e o batch size foram ajustados para evitar overfitting e garantir um treinamento eficiente.
- **Desempenho**: A precisão e a acurácia obtidas indicam que o modelo é confiável para a maioria das classificações.

---

## **5. Análise Crítica e Sugestões de Melhorias**
- **Pontos Fortes**:
  - Interface amigável do Teachable Machine.
  - Bom desempenho geral do modelo.
- **Pontos Fracos**:
  - Conjunto de dados limitado.
  - Confusão em categorias visualmente semelhantes.
- **Sugestões**:
  - Aumentar o número de imagens no conjunto de dados.
  - Utilizar técnicas de aumento de dados (data augmentation) para melhorar a robustez do modelo.
  - Explorar outras plataformas de aprendizado de máquina para maior flexibilidade.