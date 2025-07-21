from sqlalchemy.orm import Session
from schemas import ReadingCreate, UserCreate, ReadingUpdate
from models import Reading, Paragraph, User
from fastapi import HTTPException

def get_paragraphs(db: Session):
    return db.query(Paragraph).all()

def get_users(db: Session):
    return db.query(User).all()

def get_readings(db: Session):
    return db.query(Reading).all()

def create_reading(db: Session, reading: ReadingCreate):
    db_reading = Reading(
        paragraph_id=reading.paragraph_id,
        user_id=reading.user_id,
        read_text=reading.read_text,
    )
    db.add(db_reading)
    db.commit()
    db.refresh(db_reading)
    return db_reading

def create_user(db: Session, user: UserCreate):
    db_user = User(name=user.name, email=user.email)
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user

def update_reading(db: Session, reading_id: int, update_data: ReadingUpdate):
    reading = db.query(Reading).filter(Reading.id == reading_id).first()

    if not reading:
        raise HTTPException(status_code=404, detail="Reading not found")

    if update_data.accuracy_score is not None:
        reading.accuracy_score = update_data.accuracy_score

    db.commit()
    db.refresh(reading)
    return reading
