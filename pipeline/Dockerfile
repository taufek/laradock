FROM otezz/bitbucket-pipelines-laravel

RUN apt-get update

RUN apt-get install -y vim wget

RUN wget https://chromedriver.storage.googleapis.com/2.31/chromedriver_linux64.zip

RUN unzip chromedriver_linux64.zip

RUN mv chromedriver /bin/

CMD ["bash"]
