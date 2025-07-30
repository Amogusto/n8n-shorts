# 1. Базовый образ n8n
FROM n8nio/n8n:1.49.0

#################################################################
# 2. Переключаемся на root, чтобы установить пакеты в системе
#################################################################
USER root

# 3. Устанавливаем ffmpeg + python + whisperx
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg python3 python3-pip && \
    pip install --no-cache-dir whisperx==3.4.0 pyannote-audio==3.1.0 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

#################################################################
# 4. Возвращаем «нормального» пользователя node (без root)
#################################################################
USER node

# 5. Порт, который слушает n8n
EXPOSE 5678
