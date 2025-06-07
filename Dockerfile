# Use Ubuntu como base
FROM ubuntu:24.04

# Instale dependências mínimas
RUN apt-get update   && apt-get install -y --no-install-recommends     ca-certificates     shellcheck     git   && rm -rf /var/lib/apt/lists/*

# Copie os scripts para dentro do container
COPY scripts/ /opt/scripts/

# Defina o diretório de trabalho
WORKDIR /opt/scripts

# Comando padrão ao iniciar o container
CMD ["bash"]
