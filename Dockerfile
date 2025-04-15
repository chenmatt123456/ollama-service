FROM ollama/ollama:latest

# 在構建階段啟動 Ollama 服務並下載模型
RUN ollama serve & \
    sleep 5 && \
    ollama pull gemma:2b

EXPOSE 11434
CMD ["ollama", "serve"]
