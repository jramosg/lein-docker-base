# Use an official OpenJDK 21 image as the base
FROM eclipse-temurin:21-jdk

# Set environment variables
ENV LEIN_VERSION stable
ENV LEIN_INSTALL_DIR /usr/local/bin

# Install dependencies, including libsodium
RUN apt-get update && apt-get install -y \
    libsodium-dev \
    curl \
    && curl -o ${LEIN_INSTALL_DIR}/lein \
        https://raw.githubusercontent.com/technomancy/leiningen/${LEIN_VERSION}/bin/lein \
    && chmod +x ${LEIN_INSTALL_DIR}/lein \
    && ${LEIN_INSTALL_DIR}/lein --version

# Create a working directory
WORKDIR /app

# Set the default behavior to do nothing on startup
CMD ["tail", "-f", "/dev/null"]
