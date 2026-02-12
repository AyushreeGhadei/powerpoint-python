FROM python:3.11

WORKDIR /app

# 1. Copy requirements first
COPY requirements.txt .

# 2. Install dependencies
RUN pip install -r requirements.txt

# 3. Copy rest of code
COPY . .

EXPOSE 5000

CMD ["python", "-m", "myapp.flaskapp.py"]
