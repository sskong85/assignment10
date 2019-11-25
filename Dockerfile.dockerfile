      #DockerFile

      FROM ubuntu:xenial 
      LABEL maintainer="Shanshan Kong"
      LABEL email= "sskong85@gmail.com"
      EXPOSE 8080
      RUN apt-get update -y
      RUN apt-get install python-pip -y
      RUN apt-get install python-dev -y
      COPY app/site.py /app/
      COPY app/requirements.txt /app/
      WORKDIR "/app/"
      RUN pip install -r requirements.txt
      CMD python /site.py