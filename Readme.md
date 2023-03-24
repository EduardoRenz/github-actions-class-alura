## Alura Github Actions Project with Go

This repository contains a simple Go API project for the purpose of studying Github Actions. It was created as part of the Alura course on Github Actions.

The API is implemented in main.go, and a test file called main_test.go is provided to test the functionality of the API.
Running the API

To run the API, you need to have Go installed on your machine. Once you have Go installed, follow these steps:

- Clone the repository:

```bash
git clone https://github.com/your-username/alura-github-actions-go.git

```

- Navigate to the project directory:

- Run the API:

```go
go run main.go
```

The API will start running on localhost:8080. You can test it by making requests to the various endpoints.
Running the tests

To run the tests, simply run the following command:

bash

go test

This will run all the tests in the main_test.go file.
Github Actions

This repository contains a Github Actions workflow file, .github/workflows/go.yml, which runs the tests on every push to the main branch. The workflow file also runs the tests on every pull request to the main branch.

You can view the status of the workflow runs in the "Actions" tab of this repository.

---

### Docker Compose

This project also includes a docker-compose.yml file, which allows you to run the API and its dependencies in a Docker container.

To use Docker Compose, follow these steps:

Make sure you have Docker installed on your machine.

Start the container:

```bash
docker-compose up
```
