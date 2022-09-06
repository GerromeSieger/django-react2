FROM python:3.9-alpine

WORKDIR /app4

COPY . /app4

COPY requirements.txt ./

RUN pip3 install --no-cache-dir -r requirements.txt

COPY entrypoint.sh /app4/backend

ENTRYPOINT ["sh", "/entrypoint.sh"]
