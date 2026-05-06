from flask import Flask
import random

app = Flask(__name__)

@app.route("/")
def home():
    return "App running 🚀"

@app.route("/health")
def health():
    return {"status": "ok"}

@app.route("/random")
def random_number():
    return {"number": random.randint(1, 100)}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
