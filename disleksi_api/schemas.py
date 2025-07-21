from pydantic import BaseModel
from typing import Optional
from datetime import datetime

class ParagraphResponse(BaseModel):
    id: int
    text: str
    difficulty_level: str
    language_code: str
    created_at: datetime

    class Config:
        from_attributes = True

class ReadingCreate(BaseModel):
    paragraph_id: int
    user_id: int
    read_text: str

class ReadingResponse(BaseModel):
    id: int
    paragraph_id: int
    user_id: int
    read_text: str
    accuracy_score: Optional[float] = None
    recorded_at: datetime

    class Config:
        from_attributes = True

class ReadingUpdate(BaseModel):
    accuracy_score: Optional[float] = None

class UserResponse(BaseModel):
    id: int
    name: str
    email: str
    accuracy_score: Optional[float] = None
    created_at: datetime

    class Config:
        from_attributes = True

class UserCreate(BaseModel):
    name: str
    email: str

