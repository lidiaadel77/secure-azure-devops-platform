# Security Notes

This file documents the security features used in the Secure Azure DevOps Platform project.

## 1. HTTPS Only

The Azure Web App was configured with HTTPS only.

This means users must access the application through HTTPS instead of unsecured HTTP.

## 2. Azure Key Vault

Azure Key Vault was added to store application configuration securely.

Created Key Vault:

`kv-secure-devops-5y0cy`

Created secret:

`project-message`

The secret value is not stored directly in the application code.

## 3. Managed Identity

A User Assigned Managed Identity was created:

`id-secure-devops-5y0cy`

This identity was assigned to the Azure Web App.

The Web App uses this identity to access Azure Key Vault without storing passwords, keys, or credentials inside the code.

## 4. Key Vault Access Policy

The Managed Identity was given permission to read secrets from Key Vault.

Allowed permissions:

- Get
- List

This follows the principle of least privilege because the Web App only needs to read the secret, not create or delete secrets.

## 5. App Configuration

The Web App uses an app setting named:

`PROJECT_MESSAGE`

This setting references the Key Vault secret instead of storing the value directly.

The application reads this value as an environment variable.

## 6. Verification

A `/config-check` endpoint was added to confirm that the configuration was loaded successfully.

Verification URL:

`https://app-secure-devops-5y0cy.azurewebsites.net/config-check`

Expected result:

- `project_message_configured: true`
- `message_preview: Loaded securely from Azure Key Vault`

## 7. Security Value

This setup demonstrates secure cloud configuration management.

Instead of hardcoding secrets in code, the application uses:

- Azure Key Vault
- Managed Identity
- Least privilege access
- Environment-based configuration

## Result

The application successfully reads configuration from Azure Key Vault using Managed Identity.
