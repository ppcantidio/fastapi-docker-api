from fastapi import FastAPI
from datetime import datetime

app = FastAPI()

@app.get("/")
async def read_root():
    return {"Hello": "World"}

@app.get("/time")
async def read_time():
    current_time = datetime.now().strftime("%H:%M:%S")
    return {"current_time": current_time}
