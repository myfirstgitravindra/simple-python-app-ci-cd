from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    # Get the 'ENVIRONMENT' variable to demonstrate configurable deployment
    environment = os.getenv('ENVIRONMENT', 'development')
    return jsonify({
        "message": "Hello, World!",
        "environment": environment,
        "status": "success"
    })

if __name__ == '__main__':
    # Run the app. Use host='0.0.0.0' to make it available outside the container
    app.run(debug=True, host='0.0.0.0', port=5000)