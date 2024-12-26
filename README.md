# Leiningen Docker Environment

This project provides a simple Docker environment for working with Leiningen, a popular build automation tool for Clojure projects.

## Overview
The project includes the following files:

1. **Dockerfile**
   - Based on the official OpenJDK 21 image (`eclipse-temurin:21-jdk`).
   - Installs Leiningen (`stable` version).
   - Includes `libsodium` and `poppler-utils` for additional dependencies.
   - Uses `/app` as the working directory.

2. **docker-compose.yml**
   - Defines a service named `lein` that builds the Docker image.
   - Mounts the current directory (`.`) to `/app` inside the container.
   - Optionally exposes port `4001` for REPL access.

## Usage

### Prerequisites
Ensure you have the following installed on your system:
- Docker
- Docker Compose

### Build and Run the Container
1. Build the Docker image:
   ```bash
   docker-compose build
   ```

2. Start the container:
   ```bash
   docker-compose up -d
   ```

3. Access the container:
   ```bash
   docker exec -it lein-container bash
   ```

   Once inside the container, you can use Leiningen by typing:
   ```bash
   lein
   ```

## Customization
- Modify the `Dockerfile` to add additional dependencies as needed.
- Update the `docker-compose.yml` file to map additional ports or volumes.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.

## Contributing
Contributions are welcome! Feel free to open an issue or submit a pull request.
