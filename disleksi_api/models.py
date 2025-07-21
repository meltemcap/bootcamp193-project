from sqlalchemy import Column, Integer, String, DateTime, ForeignKey, Float
from sqlalchemy.orm import Session
from sqlalchemy.ext.declarative import declarative_base
from datetime import datetime

from typing import Optional

from statistics import mean


Base = declarative_base()

class Paragraph(Base):
    __tablename__ = "paragraphs"

    id = Column(Integer, primary_key=True, index=True)
    text = Column(String)
    difficulty_level = Column(String)
    language_code = Column(String)
    created_at = Column(DateTime)

class Reading(Base):
    __tablename__ = "readings"

    id = Column(Integer, primary_key=True, index=True)
    paragraph_id = Column(Integer, ForeignKey("paragraphs.id"))
    user_id = Column(Integer)  # Eğer User tablon varsa FK olabilir
    read_text = Column(String)
    accuracy_score = Column(Float, nullable=True)
    recorded_at = Column(DateTime, default=datetime.now)


class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String)
    email = Column(String, unique=True, index=True)
    created_at = Column(DateTime, default=datetime.now)

    def get_accuracy_score(self, db: Session) -> Optional[float]:
        # Get readings
        readings = db.query(Reading).filter(Reading.user_id == self.id).all()

        if not readings:
            return None

        return mean([reading.accuracy_score for reading in readings if reading.accuracy_score is not None])
    