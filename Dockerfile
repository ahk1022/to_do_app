FROM "python3"

WORKDIR  /app

COPY . . 

RUN pip isntall -r requirements.txt

RUN python manage.py migrate

CMD [ "python","manage.py","createsuperuser" ]
