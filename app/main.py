import socket

from fastapi import FastAPI, Response
from fastapi.responses import HTMLResponse

app = FastAPI()

def generate_html_response():
    hostname=socket.getfqdn()
    html_content = """
    <html>
        <head>
            <title>Webapp</title>
        </head>
        <body>
            <h1>WebApp running</h1>
        </body>
    </html>
    """
    return HTMLResponse(content=html_content, status_code=200, headers={"X-Backend-Server":hostname})

@app.get("/", response_class=HTMLResponse)
def read_root():
    return generate_html_response()