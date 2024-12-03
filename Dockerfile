# Sử dụng Node.js làm base image để build ứng dụng
FROM node:16 AS build-stage

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy package.json và package-lock.json vào container
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ mã nguồn vào container
COPY . .

# Build ứng dụng Vue.js
RUN npm run build

# Sử dụng nginx để chạy ứng dụng trong môi trường production
FROM nginx:alpine AS production-stage

# Copy build từ build-stage vào thư mục của nginx
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Mở cổng cho nginx
EXPOSE 80

# Chạy nginx khi container chạy
CMD ["nginx", "-g", "daemon off;"]