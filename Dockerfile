# 使用官方 Nginx 镜像作为基础镜像
FROM nginx:alpine

# 将当前目录下的构建文件复制到 Nginx 容器的静态文件目录
COPY ./dist /usr/share/nginx/html

# 替换默认的 Nginx 配置（可选）
COPY ./nginx.conf /etc/nginx/nginx.conf

# 暴露 Nginx 服务的默认端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
