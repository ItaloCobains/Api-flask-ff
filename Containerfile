FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN api_flask_ff create-db
RUN api_flask_ff populate-db
RUN api_flask_ff add-user -u admin -p admin
EXPOSE 5000
CMD ["api_flask_ff", "run"]
