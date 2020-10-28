from flask import Flask
import os
import logging

__version__ = "0.0.1"

logger = logging.getLogger(__name__)

app = Flask(__name__)


@app.route("/")
def up():
    return "up\n"


@app.route("/version")
def version():
    return f"{__version__}\n"


if __name__ == "__main__":
    logging.basicConfig(level=os.environ.get("LOG_LEVEL", "INFO").upper())
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 3000)))
