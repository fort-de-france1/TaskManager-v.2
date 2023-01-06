FROM python

WORKDIR /usr/src/dm_rest

COPY ./req.txt /usr/src/req.txt

RUN python3 -m pip install --upgrade pip
RUN pip install -r /usr/src/req.txt

COPY . /usr/src/dm_rest

EXPOSE 8000
CMD ["python3", "manage.py", "migrate"]
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
