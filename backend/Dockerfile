FROM python:3.9-alpine

WORKDIR /app4/backend

COPY . /app4

COPY requirements.txt ./

RUN pip3 install --no-cache-dir -r requirements.txt

COPY ./entrypoint.sh /

ENTRYPOINT ["sh", "/entrypoint.sh"]
