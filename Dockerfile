FROM python:3-slim
WORKDIR /app
COPY . /app/
RUN pip3 install "poetry==1.7.1" --no-cache-dir
RUN adduser --disabled-password --gecos '' python
RUN chown -R python:python /app
USER python
RUN poetry install --no-cache --no-interaction
EXPOSE 8000
CMD ["poetry", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
