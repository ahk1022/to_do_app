FROM python:3.9

WORKDIR  /app

COPY . . 

RUN pip install -r requirements.txt

CMD [ "python","manage.py" ]

EXPOSE 8001
