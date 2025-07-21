from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session
from models import Base, Paragraph, Reading, User
from schemas import ReadingCreate, ReadingResponse, ParagraphResponse, UserResponse, UserCreate, ReadingUpdate
from crud import create_reading, get_paragraphs, get_users, get_readings, create_user, update_reading
from database import engine, SessionLocal
from typing import List
from pydantic import BaseModel
from datetime import datetime

Base.metadata.create_all(bind=engine)

app = FastAPI()

# Veritabanındaki tabloları otomatik oluştur
Base.metadata.create_all(bind=engine)

# DB bağlantısı dependency
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

# # API'nin dışarıya döneceği model (JSON olarak)
# class ParagraphResponse(BaseModel):
#     id: int
#     text: str
#     difficulty_level: str
#     language_code: str
#     created_at: datetime

#     class Config:
#         from_attributes = True


# Paragrafları dönen endpoint
@app.get("/paragraphs", response_model=List[ParagraphResponse])
def get_paragraphs_endpoint(db: Session = Depends(get_db)):
    return get_paragraphs(db=db)

# Reading oluşturan endpoint
@app.post("/readings", response_model=ReadingResponse)
def create_reading_endpoint(reading: ReadingCreate, db: Session = Depends(get_db)):
    return create_reading(db=db, reading=reading)

@app.get("/readings", response_model=List[ReadingResponse])
def get_readings_endpoint(db: Session = Depends(get_db)):
    return get_readings(db=db)

@app.get("/users", response_model=List[UserResponse])
def get_users_endpoint(db: Session = Depends(get_db)):
    return get_users(db=db)

@app.post("/users", response_model=UserResponse)
def create_user_endpoint(user: UserCreate, db: Session = Depends(get_db)):
    user = create_user(db=db, user=user)
    return UserResponse(
        id=user.id,
        name=user.name,
        email=user.email,
        accuracy_score=user.get_accuracy_score(db=db),
        created_at=user.created_at
    )

@app.put("/readings/{reading_id}", response_model=ReadingResponse)
def update_reading_endpoint(
    reading_id: int,
    update_data: ReadingUpdate,
    db: Session = Depends(get_db)
):
    return update_reading(db=db, reading_id=reading_id, update_data=update_data)