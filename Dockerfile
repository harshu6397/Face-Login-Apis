FROM python

RUN pip install --upgrade pip

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD ["python", "src/server.py"]


