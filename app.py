import socket
import datetime
from flask import Flask, render_template

app = Flask(__name__, static_folder="static/dist")


@app.route('/')
def main():
    time = datetime.datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S")
    hostname = socket.gethostname()
    ip = socket.gethostbyname(hostname)

    return render_template("index.html", hostname=hostname, time=time, ip=ip)
