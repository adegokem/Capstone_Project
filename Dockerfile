FROM python:3.9

WORKDIR /app

COPY . web.py /app/

RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

# expose the container
EXPOSE 80

# command to run on container start
CMD ["python", "web.py"]