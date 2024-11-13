FROM python:3.9

WORKDIR  /app

COPY . . 

RUN pip install -r requirements.txt

RUN python manage.py migrate
RUN python manage.py createsuperuser
CMD [ "python","manage.py" ]

EXPOSE 8001
