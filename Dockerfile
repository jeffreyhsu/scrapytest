FROM python:latest
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt -i https://pypi.doubanio.com/simple/
ADD . /code/
WORKDIR ./tutorial
ENTRYPOINT scrapy crawl quotes -o quotes.jl
