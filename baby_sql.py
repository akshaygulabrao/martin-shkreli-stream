from sqlalchemy import Column, Integer, String, create_engine
from sqlalchemy.orm import sessionmaker,declarative_base

# Create a base class for declarative models
Base = declarative_base()

# Define a simple User model/table
class User(Base):
    __tablename__ = 'users'
    
    id = Column(Integer, primary_key=True)
    username = Column(String(50), unique=True, nullable=False)
    email = Column(String(120), unique=True, nullable=False)

# Create engine and establish database connection
engine = create_engine('sqlite:///example.db')

# Create tables in the database
Base.metadata.create_all(engine)

# Create a session factory
Session = sessionmaker(bind=engine)
session = Session()

# Example of adding a record
new_user = User(username='johndoe', email='john@example.com')
session.add(new_user)
session.commit()