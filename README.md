# Projeto NLP (Processamento de Linguagem Natural)

Este repositório contém um projeto de NLP em Python com pré-processamento de texto, visualização com word clouds, similaridade e PCA (TASK 01).

## Estrutura de pastas

- `TASK 01/`
  - `imports.py`: importa bibliotecas e define variáveis globais (autores, cores, etc.)
  - `preprocessing.py`: rotina `preprocess_text(df_fp)` para limpar, tokenizar e stemizar
  - `visualization.py`: rotina `generate_wordclouds(df_fp)` para gerar e salvar `wordcloud` e imagens comparativas
  - `similarity.py`, `vectorization.py`, `pca_analysis.py`: etapas do pipeline de análise (pode incluir suas próprias chamadas e relatórios)
- `check_env.py`: valida se `nltk`, `spacy` e `langdetect` estão instalados e funcionando
- `setup_nltk.py`: baixa recursos NLTK (`punkt`, `stopwords`, `rslp`, `mac_morpho`, etc.)
- `enviroment.yml`: ambiente conda
- `DATA/`: dados (csvs) usados no projeto

## Ambiente Python

1. Instale Anaconda ou Miniconda.
2. No diretório do projeto, execute:
   ```powershell
   conda env create -f enviroment.yml
   conda activate pln
   pip install spacy langdetect kagglehub
   python -m spacy download pt_core_news_sm
   ```

3. Inicialize NLTK (um só vez):
   ```powershell
   python setup_nltk.py
   ```

4. Verifique o ambiente:
   ```powershell
   python check_env.py
   ```

## Como executar

- Rodar apenas `imports.py` não gera saída além de importações, pois ele define bibliotecas e config.
- Rodar `visualization.py` agora faz pipeline completo com `f_pessoa_v2.csv`:

  ```powershell
  cd "C:\Users\Nicollas\Desktop\NLP\TASK 01"
  python visualization.py
  ```

  Isso:
  - lê `f_pessoa_v2.csv`
  - aplica `preprocess_text`
  - cria/exibe e salva `wordcloud` e comparações TF/TF-IDF

- Você também pode rodar scripts separados (como `preprocessing.py`) em modo interativo no notebook.

## Observações

- O NLTK deve encontrar dados em `%APPDATA%/nltk_data` ou `./nltk_data`.
- Se houver `__pycache__/`, `.ipynb_checkpoints/` e outros artifacts, já está filtrado no `.gitignore`.
- Pastas vazias não são versionadas automaticamente; use `Slides/.gitkeep` se precisar manter estrutura.

## Git

1. Inicializar:
   ```powershell
   git init
   git add .
   git commit -m "Primeiro commit"
   git remote add origin https://github.com/<usuario>/<repo>.git
   git branch -M main
   git push -u origin main
   ```
2. Depois de alterações:
   ```powershell
   git add .
   git commit -m "Atualiza ..."
   git push
   ```

## Fluxo básico (ajustável)

1. Ler dados: `pd.read_csv('f_pessoa_v2.csv')`
2. `df, stop_words = preprocess_text(df)`
3. `generate_wordclouds(df)`
4. (Opcional) gerar matriz TF-IDF, similaridade e PCA
