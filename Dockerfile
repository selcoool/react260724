# Use the official Node.js image.
FROM node:22.5-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép package.json và package-lock.json vào thư mục làm việc
COPY package*.json ./

# # Cài đặt các phụ thuộc
# RUN npm install

# Cài đặt các phụ thuộc
RUN npm ci

# Sao chép mã nguồn của ứng dụng vào container
COPY . .

# # Xây dựng ứng dụng React
# RUN npm run build

# # Mở cổng 3000 để container có thể lắng nghe
# EXPOSE 3000

# # Chạy ứng dụng
# CMD ["npm", "start"]