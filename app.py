import socket
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "status": "success",
        "message": "Flask application is running smoothly inside Docker!",
        "hostname": socket.gethostname()
    })

if __name__ == '__main__':
    # Binding to 0.0.0.0 allows traffic from outside the container
    app.run(host='0.0.0.0', port=5000)