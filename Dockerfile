FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN sample_flask create-db
RUN sample_flask populate-db
RUN sample_flask add-user -u admin -p admin
EXPOSE 5000
CMD ["sample_flask", "run"]
