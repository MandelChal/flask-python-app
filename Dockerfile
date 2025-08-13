FROM python:3.7-slim

WORKDIR /app

# התקנת curl לבדיקות
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# העתקת requirements והתקנה
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# העתקת כל הקבצים
COPY . .

# חשיפת פורט
EXPOSE 5000

# הפעלה
CMD ["python", "app.py"]