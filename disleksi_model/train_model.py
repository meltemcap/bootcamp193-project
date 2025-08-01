import pandas as pd
import re
import string
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.preprocessing import LabelEncoder
from sklearn.metrics import classification_report
from imblearn.over_sampling import SMOTE

# Veriyi okuma
df = pd.read_csv("C:/Users/ASUS/Desktop/nlp/Dyt-desktop.csv", sep=";", encoding="utf-8")

# Etiketleri sayısallaştırma
df["Dyslexia"] = df["Dyslexia"].map({"Yes": 1, "No": 0})

# Kategorik sütunları dönüştürme
le = LabelEncoder()
df["Gender"] = le.fit_transform(df["Gender"])
df["Nativelang"] = le.fit_transform(df["Nativelang"])
df["Otherlang"] = le.fit_transform(df["Otherlang"])

# Özellik ve etiketler
X = df.drop("Dyslexia", axis=1)
y = df["Dyslexia"]

smote = SMOTE(random_state=42)
X_resampled, y_resampled = smote.fit_resample(X, y)

# Eğitim / test bölmesi
X_train, X_test, y_train, y_test = train_test_split(X_resampled, y_resampled, test_size=0.2, random_state=42)

# Model eğitimi
model = RandomForestClassifier(class_weight='balanced', random_state=42)
model.fit(X_train, y_train)

# Tahmin ve değerlendirme
y_pred = model.predict(X_test)
print(classification_report(y_test, y_pred))

import pickle
with open("disleksi_model.pkl", "wb") as f:
    pickle.dump(model, f)
with open("label_encoder_gender.pkl", "wb") as f:
    pickle.dump(le, f)

