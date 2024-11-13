FROM "python3"

WORKDIR  /app

COPY . . 

RUN pip isntall -r requirements.txt

RUN python manage.py migrate
RUN python manage.py createsuperuser
CMD [ "python","manage.py" ]
