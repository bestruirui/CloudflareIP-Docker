FROM python:alpine

WORKDIR /bestrui

COPY . /bestrui

RUN apk add tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

RUN pip install -r requirements.txt

CMD ["sh", "start.sh"]