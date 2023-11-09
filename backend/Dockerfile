FROM python:3.9-bullseye

WORKDIR /backend

COPY . .

ENV DJANGO_SETTINGS_MODULE=cassiecodes.settings

ENV PYTHONUNBUFFERED=1

RUN pip install -r requirements.txt

# CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000