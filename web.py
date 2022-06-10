from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return '<h1>This is my Capstone Project DevOps Udacity, \
            my name is Mofoluwaso.</h1>'

app.run(host='localhost', port=80)