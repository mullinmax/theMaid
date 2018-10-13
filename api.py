from flask import Flask
import sys
app = Flask(__name__)


@app.route('/')
def index():
    return "Hello, World!"


if __name__ == '__main__':
    port = sys.argv[1]
    print("Running on port: " + port)
    app.run(port=port)
