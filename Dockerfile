FROM ollama/ollama:latest
RUN ollama pull gemma3:4b
EXPOSE 11434
CMD ["ollama", "serve"]
