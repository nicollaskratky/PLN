@echo off

echo ======================================
echo Criando ambiente...
echo ======================================
conda env create -f environment.yml

echo ======================================
echo Ativando ambiente...
echo ======================================
call conda activate pln

echo ======================================
echo Instalando modelo spaCy...
echo ======================================
python -m spacy download pt_core_news_sm

echo ======================================
echo Baixando recursos NLTK...
echo ======================================
python setup_nltk.py

echo ======================================
echo Verificando instalacao...
echo ======================================
python check_env.py

echo ======================================
echo Instalacao concluida!
echo ======================================

pause