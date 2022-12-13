#python:3.10-buster
FROM python:3.10-buster

COPY functions.py /functions.py
COPY launch_training.py /launch_training.py
COPY .env /.env
COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD python launch_training.py
