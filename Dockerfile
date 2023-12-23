# menentukan versi node untuk membuat image
FROM node:16-alpine as builder

# Mengatur direktori kerja
WORKDIR /app

# Menyalin semua file ke direktori kerja
COPY . .

# Menjalankan perintah npm ci untuk menginstal dependensi dengan menggunakan file package-lock.json
RUN npm install

# Menetapkan variabel lingkungan NODE_ENV ke production
ENV AMQP_URL="amqp://rabbitmq:5672"

# Menggunakan port 3000 untuk lalu lintas aplikasi kontainer
EXPOSE 3001

# Menetapkan perintah default yang akan dijalankan saat container dijalankan
CMD ["node", "index.js"]