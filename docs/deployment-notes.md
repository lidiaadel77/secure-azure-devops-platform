# Deployment Notes

This file documents how the Flask application was deployed to Azure App Service.

## 1. Azure Infrastructure

The Azure infrastructure was created using Terraform.

Created resources:

- Resource Group
- App Service Plan
- Linux Web App
- Log Analytics Workspace
- Application Insights

Terraform output showed the deployed web app URL:

`https://app-secure-devops-5y0cy.azurewebsites.net`

## 2. Startup Command

The Azure Web App was configured to start the Flask application using Gunicorn.

Command used:

`gunicorn --bind=0.0.0.0 --timeout 600 app:app`

This tells Azure to run the Flask app from:

- File: `app.py`
- Flask object: `app`

## 3. Deployment Package

The application files were compressed into a zip file.

Files included:

- `app.py`
- `requirements.txt`

Command used:

`Compress-Archive -Path app.py,requirements.txt -DestinationPath ..\deploy.zip -Force`

## 4. Azure Deployment

The zip file was deployed to Azure App Service using Azure CLI.

Command used:

`az webapp deployment source config-zip --resource-group rg-secure-devops-5y0cy --name app-secure-devops-5y0cy --src deploy.zip`

The deployment completed successfully.

Important deployment result:

- Build successful
- Site started successfully
- RuntimeSuccessful
- 1 successful instance

## 5. Verification

The deployed app was tested in the browser.

Home page:

`https://app-secure-devops-5y0cy.azurewebsites.net`

Health endpoint:

`https://app-secure-devops-5y0cy.azurewebsites.net/health`

The health endpoint returned:

`status: ok`

## Result

The Flask application was successfully deployed to Azure App Service and verified through the public Azure URL.
