from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def hello():
    return {"message": "Welcome to USKCORP from Lambda + FastAPI!"}
