FROM python:3-alpine3.15
ADD . /code
WORKDIR /code
RUN pip install --upgrade pip
RUN apk add --no-cache gcc g++ python3-dev
RUN pip install -r requirements.txt
EXPOSE 80
CMD python ./server/server.py
