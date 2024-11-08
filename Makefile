# Makefile for building, testing, and running the Java application

# Variables
MVN = mvn
JAVA_SRC = src/main/java/com/example/App.java
JAVA_TEST_SRC = src/test/java/com/example/AppTest.java

# Build the Java application
.PHONY: build
build:
	$(MVN) clean compile

# Test the Java application
.PHONY: test
test:
	$(MVN) test

# Run the Java application
.PHONY: run
run:
	$(MVN) exec:java -Dexec.mainClass="com.example.App"

.PHONY: package
package: build
	$(MVN) package

# Create container image
.PHONY: container
container: package
	docker build -t java-app .
