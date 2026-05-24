# Monitoring Notes

This file documents the monitoring setup used in the Secure Azure DevOps Platform project.

## 1. Monitoring Tools

The project uses Azure monitoring services to observe the deployed Flask application.

Created monitoring resources:

- Log Analytics Workspace
- Application Insights
- Azure Monitor Metric Alert

## 2. Log Analytics Workspace

Created workspace:

`log-secure-devops-5y0cy`

The Log Analytics Workspace is used to store and analyze logs from Azure resources.

## 3. Application Insights

Created Application Insights resource:

`appi-secure-devops-5y0cy`

Application Insights is used to monitor the web application, including requests, performance, failures, and availability.

## 4. Azure Monitor Alert

Created alert:

`alert-secure-devops-http-5xx-5y0cy`

The alert watches the Azure Web App for HTTP 5xx server errors.

Alert condition:

- Resource: `app-secure-devops-5y0cy`
- Metric: `Http5xx`
- Aggregation: `Total`
- Operator: `GreaterThan`
- Threshold: `5`
- Frequency: `5 minutes`
- Window size: `5 minutes`
- Severity: `2`

## 5. Why This Matters

HTTP 5xx errors mean the server or application is failing.

This alert helps detect application issues early, which is important for cloud operations and production support.

## 6. Result

The project now includes monitoring and alerting for the deployed Azure Web App.

This demonstrates cloud operations skills, not only deployment skills.
