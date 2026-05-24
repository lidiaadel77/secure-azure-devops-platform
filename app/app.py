import os
from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def home():
    project_message = os.getenv("PROJECT_MESSAGE", "Local development mode")

    return f"""
    <h1>Secure Azure DevOps Platform</h1>
    <p>This Flask app is deployed on Azure App Service.</p>
    <p>The platform includes Terraform, GitHub Actions, Key Vault, Managed Identity, and Azure Monitor.</p>
    <p><strong>Configuration source:</strong> {project_message}</p>
    """


@app.route("/health")
def health():
    return jsonify({
        "status": "ok",
        "service": "secure-azure-devops-platform"
    })


@app.route("/config-check")
def config_check():
    project_message = os.getenv("PROJECT_MESSAGE")

    return jsonify({
        "project_message_configured": project_message is not None,
        "message_preview": project_message if project_message else "Not configured"
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
