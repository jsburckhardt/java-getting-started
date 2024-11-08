# Getting Started with Java

This repository contains a sample Java application following best practices. It includes dependencies, a devcontainer for development, and a Dockerfile for running the built app.

## Prerequisites

- Docker
- Visual Studio Code (with Remote - Containers extension)

## Setting up the Development Environment

1. Clone the repository:
   ```sh
   git clone https://github.com/githubnext/workspace-blank.git
   cd workspace-blank
   ```

2. Open the repository in Visual Studio Code:
   ```sh
   code .
   ```

3. Reopen the repository in the devcontainer:
   - Press `F1` and select `Remote-Containers: Reopen in Container`.

## Building the Java Application

To build the Java application, run the following command:
```sh
make build
```

## Testing the Java Application

To run tests for the Java application, use the following command:
```sh
make test
```

## Running the Java Application

To run the built Java application, execute the following command:
```sh
make run
```

## Using the Dockerfile

The provided Dockerfile is used to run the built Java application. To build and run the Docker container, use the following commands:
```sh
docker build -t java-app .
docker run --rm java-app
```
