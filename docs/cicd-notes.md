# CI/CD Notes

This file documents the CI/CD pipeline used in the Secure Azure DevOps Platform project.

## 1. GitHub Actions Workflow

The project uses GitHub Actions to automate testing and deployment.

Workflow file:

`.github/workflows/deploy.yml`

The workflow runs when code is pushed to the `main` branch.

## 2. CI Stage

The CI stage performs the following actions:

- Checks out the repository.
- Sets up Python.
- Installs dependencies from `requirements.txt`.
- Runs the Pytest test suite.

This confirms that the Flask application works before deployment.

## 3. Azure Login

The workflow logs into Azure using OpenID Connect.

This avoids storing long-lived Azure passwords or service principal secrets in GitHub.

GitHub uses these repository secrets:

- `AZURE_CLIENT_ID`
- `AZURE_TENANT_ID`
- `AZURE_SUBSCRIPTION_ID`

## 4. Federated Credential

A federated credential was added to the Azure User Assigned Managed Identity.

The trusted GitHub subject is:

`repo:lidiaadel77/secure-azure-devops-platform:ref:refs/heads/main`

This allows GitHub Actions from the `main` branch to authenticate to Azure.

## 5. Deployment Stage

After tests pass, GitHub Actions deploys the Flask app to Azure App Service.

Azure App Service name:

`app-secure-devops-5y0cy`

## 6. Result

The CI/CD pipeline successfully tests and deploys the Flask application to Azure automatically after code is pushed to GitHub.
