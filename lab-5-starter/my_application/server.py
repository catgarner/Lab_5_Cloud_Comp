from flask import Flask
import requests
app = Flask(__name__)

@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def catch_all(path):
    r = requests.get('http://jsonplaceholder.typicode.com/%s' % path)
    return r.text

if __name__ == '__main__':
    app.run()