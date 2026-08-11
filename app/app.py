from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <html>
        <head>
            <title>EKS Helm Demo</title>
        </head>
        <body>
            <h1>Hello from Kubernetes!</h1>
            <p>This application is deployed on Amazon EKS using Helm.</p>
        </body>
    </html>
    """

@app.route("/health")
def health():
    return jsonify({
        "status": "healthy"
    })

@app.route("/info")
def info():
    return jsonify({
        "application": "eks-helm-demo",
        "environment": os.getenv("ENVIRONMENT", "unknown"),
        "version": os.getenv("APP_VERSION", "unknown")
    })


if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=8080
    )
