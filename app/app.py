from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def home():
    return """
    <h1>Secure Azure DevOps Platform</h1>
    <p>This Flask app is prepared for Azure App Service deployment.</p>
    <p>The platform will include Terraform, GitHub Actions, Key Vault, Managed Identity, and Azure Monitor.</p>
    """


@app.route("/health")
def health():
    return jsonify({
        "status": "ok",
        "service": "secure-azure-devops-platform"
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
