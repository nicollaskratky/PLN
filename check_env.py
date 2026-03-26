import nltk
import spacy
from langdetect import detect

# Adicionar caminho local dos dados NLTK
nltk.data.path.append('./nltk_data')

print("Teste langdetect:", detect("Isso é um teste"))

nltk.data.find('tokenizers/punkt')
print("NLTK OK")

spacy.load("pt_core_news_sm")
print("spaCy OK")

print("Ambiente pronto")