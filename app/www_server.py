#!/usr/bin/python3
from flask import Flask, request, send_from_directory
app = Flask(__name__)

app.static_folder = "/public"

@app.route("/_oidc_callback")
def oidc_callback():
    print("data: " + request.data)
    return "OK"

@app.route("/")
@app.route("/<path:name>")
def server_static(name="index.html"):
    return send_from_directory(app.static_folder, name)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80, threaded=True)
