# PLN — Processamento de Linguagem Natural em Poemas

Projeto de análise de texto em Python aplicado a poemas em português, desenvolvido como estudo comparativo entre as bibliotecas NLTK e spaCy.

## Dataset

[Poems in Portuguese](https://www.kaggle.com/datasets/oliveirasp6/poems-in-portuguese) — disponível no Kaggle.

[Complete literary works of Fernando Pessoa](https://www.kaggle.com/datasets/luisroque/the-complete-literary-works-of-fernando-pessoa) — disponível no Kaggle.

## Estrutura do repositório

```
PLN/
├── notebooks/
│   ├── TASK_01_notebook.ipynb   # Análise focada em Fernando Pessoa e seu Heterônimos
│   └── TASK_02_notebook.ipynb   # Análises comparativas de NLTK vs spaCy
├── DATA/                        # CSVs do dataset
├── imagens/                     # Imagens geradas no dataset
├── Relatórios/                  # Relatórios gerados
├── check_env.py                 # Valida o ambiente
├── setup_nltk.py                # Baixa recursos NLTK
├── environment.yml              # Ambiente conda
├── install.bat                  # Instalação Windows
└── install.sh                   # Instalação Linux/Mac
```

## Instalação

**Windows:**
```bash
install.bat
```

**Linux/Mac:**
```bash
bash install.sh
```

O script cria o ambiente conda, instala as dependências, baixa o modelo do spaCy e os recursos do NLTK automaticamente.

## Início Rápido

### Pré-requisitos

- Python 3.10 ou superior
- Conda instalado
- Git instalado

### Instalação

**Windows:**
```bash
install.bat
```

**Linux/Mac:**
```bash
chmod +x install.sh
./install.sh
```

O script vai:
1. ✓ Criar ambiente conda `pln`
2. ✓ Ativar ambiente
3. ✓ Instalar todas as dependências do `environment.yml`
4. ✓ Baixar modelo spaCy `pt_core_news_sm`
5. ✓ Executar `setup_nltk.py` (baixa recursos NLTK)
6. ✓ Executar `check_env.py` (verifica se tudo funcionou)

### Verificar Instalação (após completar)

Se quiser verificar novamente posteriormente:

```powershell
conda activate pln
python check_env.py
```

Esperado:
```
Teste langdetect: pt
NLTK OK
spaCy OK
Ambiente pronto
```

## Como Executar

### Notebooks (Recomendado)

```powershell
conda activate pln
jupyter notebook notebooks/TASK_01_notebook.ipynb
```

ou

```powershell
jupyter notebook notebooks/TASK_02_notebook.ipynb
```
