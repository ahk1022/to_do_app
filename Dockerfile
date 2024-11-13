FROM python:3.9

WORKDIR  /app

COPY . . 

RUN pip install -r requirements.txt

RUN python3 manage.py createsuperuser
CMD [ "python","manage.py" ]

EXPOSE 8001
