
FROM python:3.6.1

ADD requirements.txt /
RUN pip install -r requirements.txt

WORKDIR /home/site/wwwroot
ADD . /home/site/wwwroot

EXPOSE 8000
CMD ["python", "/code/manage.py", "runserver", "0.0.0.0:8000"]