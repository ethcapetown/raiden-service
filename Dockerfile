FROM python:3

WORKDIR ~/Projects/raiden/raiden-service

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./service.py" ]
