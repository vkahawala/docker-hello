FROM python:3.6
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
ENV NAME World
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
#CMD ["python3", "app.py"]
ENTRYPOINT ["/entrypoint.sh"]
