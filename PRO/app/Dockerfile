FROM python:3.11.0
COPY requirements.txt /opt/app/
RUN pip install -r /opt/app/requirements.txt
COPY app.py /opt/app/app.py
WORKDIR /opt/app/
CMD ["python", "app.py"]

