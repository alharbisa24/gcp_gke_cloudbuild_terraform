from fastapi import FastAPI
from prometheus_fastapi_instrumentator import Instrumentator

app = FastAPI()

@app.get("/")
def read_root():
    return {"TEST": "Hello World"}


Instrumentator().instrument(app).expose(app)