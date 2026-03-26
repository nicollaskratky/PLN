# PLN — Processamento de Linguagem Natural em Poemas

Projeto de análise de texto em Python aplicado a poemas em português, desenvolvido como estudo comparativo entre as bibliotecas NLTK e spaCy.

## Dataset

[Poems in Portuguese](https://www.kaggle.com/datasets/oliveirasp6/poems-in-portuguese) — disponível no Kaggle.

## Estrutura do repositório

```
PLN/
├── notebooks/
│   ├── TASK_01_notebook.ipynb   # Pipeline principal
│   └── TASK_02_notebook.ipynb   # Análises avançadas
├── DATA/                        # CSVs do dataset
├── Relatórios/                  # Relatórios gerados
├── nltk_data/                   # Dados locais do NLTK
├── check_env.py                 # Valida o ambiente
├── setup_nltk.py                # Baixa recursos NLTK
├── environment.yml              # Ambiente conda
├── install.bat                  # Instalação Windows
└── install.sh                   # Instalação Linux/Mac
```

## Instalação

1. Instale [Anaconda](https://www.anaconda.com/) ou Miniconda.

2. Crie e ative o ambiente:

```bash
conda env create -f environment.yml
conda activate pln
pip install spacy langdetect kagglehub
python -m spacy download pt_core_news_sm
```

3. Baixe os recursos do NLTK:

```bash
python setup_nltk.py
```

4. Verifique o ambiente:

```bash
python check_env.py
```

## Como executar

Abra os notebooks na ordem:

1. `TASK_01_notebook.ipynb` — pipeline de pré-processamento e análise inicial
2. `TASK_02_notebook.ipynb` — análises avançadas e comparativo entre autores

## Dependências principais

- Python 3.x
- NLTK
- spaCy + modelo `pt_core_news_sm`
- pandas
- matplotlib
- kagglehub
