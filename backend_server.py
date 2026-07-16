# NYAY-KAVACH BACKEND SERVER (FASTAPI)
from fastapi import FastAPI, HTTPException
import json

app = FastAPI()

# Dummy Database for demonstration
DATABASE = {
    "admin": "up_police_2026",
    "prashantsir": "secure_pass"
}

@app.post("/api/login")
def login_officer(username: str, password: str):
    """Backend authentication logic"""
    if username in DATABASE and DATABASE[username] == password:
        return {"status": "success", "message": "Access Granted to Nyay-Kavach AI"}
    raise HTTPException(status_code=401, detail="Invalid Credentials")

@app.get("/api/crime-records")
def get_records():
    """Fetch crime records from Database"""
    return {"status": "success", "data": "All FIR records loaded successfully"}
