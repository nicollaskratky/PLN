#!/bin/bash

echo "Criando ambiente..."
conda create -n pln python=3.10 -y

echo "Ativando ambiente..."
source activate pln

echo "Instalando dependências..."
pip install -r requirements.txt
echo "Baixando modelo spaCy..."
python -m spacy download pt_core_news_sm

echo "Baixando recursos NLTK..."
python - <<EOF
import nltk

nltk.download('punkt')
nltk.download('stopwords')
nltk.download('rslp')
nltk.download('mac_morpho')
nltk.download('averaged_perceptron_tagger_eng')
EOF

echo "Instalação concluída!"