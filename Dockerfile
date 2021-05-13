FROM public.ecr.aws/lambda/python:3.8

RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
CMD [ "python", "main.py" ]
ENTRYPOINT [ "python", "app/main.py" ]
#COPY requirements.txt requirements.txt
#RUN python -m pip install -r requirements.txt
#RUN mkdir -p /app
#COPY app.py /app/main.py
