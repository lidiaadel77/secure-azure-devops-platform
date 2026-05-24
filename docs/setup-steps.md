# Setup Steps

This file documents the setup process for the Secure Azure DevOps Platform project.

## 1. Project Repository

Created a GitHub repository named:

`secure-azure-devops-platform`

The repository is used to store the application code, tests, CI/CD workflow, Terraform files, diagrams, screenshots, and documentation.

## 2. Flask Application

Created a small Python Flask application inside:

`app/app.py`

The application includes:

- A home route `/`
- A health check route `/health`

The health endpoint returns a JSON response showing that the service is running.

## 3. Python Dependencies

Created a requirements file inside:

`app/requirements.txt`

Main dependencies:

- Flask
- Pytest
- Gunicorn

## 4. Local Testing

Created tests inside:

`app/tests/test_app.py`

The tests check:

- The home page loads successfully.
- The `/health` endpoint returns status `ok`.

The tests were run locally using:

`pytest`

Result:

`2 passed`

## 5. GitHub Actions

Created a GitHub Actions workflow inside:

`.github/workflows/test.yml`

The workflow runs automatically when code is pushed to the `main` branch.

The workflow:

- Checks out the repository.
- Sets up Python.
- Installs dependencies.
- Runs the test suite using Pytest.

The workflow passed successfully on GitHub Actions.

## Current Project Status

The project currently has a working Flask application, local tests, and an automated GitHub Actions CI pipeline.

Next phase: add Terraform infrastructure for Azure App Service, Key Vault, Managed Identity, and monitoring.
