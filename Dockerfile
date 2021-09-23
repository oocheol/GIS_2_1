FROM python:3.9.0

WORKDIR /home/

RUN echo 'hello1'

RUN git clone https://github.com/oocheol/GIS_2_1.git

WORKDIR /home/GIS_2_1/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py migrate --settings=AI_Project_1.settings.deploy && python manage.py collectstatic --noinput --settings=AI_Project_1.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=AI_Project_1.settings.deploy AI_Project_1.wsgi --bind 0.0.0.0:8000"]