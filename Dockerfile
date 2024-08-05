# Resmi Python imajını kullan
FROM python:3.13.0b4-slim

# Çalışma dizinini /app olarak ayarla
WORKDIR /app

# Gerekli dosyaları kopyala
COPY requirements.txt .

# Gerekli paketleri yükle
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama kodunu kopyala
COPY . .

# Flask uygulamasını çalıştır
CMD ["python", "app.py"]
