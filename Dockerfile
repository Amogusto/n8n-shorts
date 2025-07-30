# n8n на Alpine – лёгкий, но без apt‑get
FROM n8nio/n8n:1.49.0

# переходим во root‑mode, чтобы иметь права ставить пакеты
USER root

# нам нужен только ffmpeg (Python‑библиотеки убираем, чтобы не тянуть громоздкий PyTorch)
RUN apk add --no-cache ffmpeg

# возвращаем стандартного пользователя n8n
USER node
EXPOSE 5678
