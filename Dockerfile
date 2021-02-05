FROM python:3.8.6-alpine3.12

ENV LANG C.UTF-8

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
        apk update && apk add --no-cache libcurl libxslt pcre && \
        apk add --no-cache --virtual .build-dependencies g++ gcc musl-dev libxslt-dev jpeg-dev zlib-dev build-base curl-dev linux-headers pcre-dev && \
        pip install -i https://pypi.douban.com/simple alembic==1.4.3  && \
        pip install -i https://pypi.douban.com/simple blinker==1.4  && \
        pip install -i https://pypi.douban.com/simple certifi==2020.6.20  && \
        pip install -i https://pypi.douban.com/simple chardet==3.0.4  && \
        pip install -i https://pypi.douban.com/simple click==7.1.2  && \
        pip install -i https://pypi.douban.com/simple cycler==0.10.0  && \
        pip install -i https://pypi.douban.com/simple dominate==2.5.2  && \
        pip install -i https://pypi.douban.com/simple Flask==1.1.2  && \
        pip install -i https://pypi.douban.com/simple Flask-Admin==1.5.6  && \
        pip install -i https://pypi.douban.com/simple Flask-Avatars==0.2.2  && \
        pip install -i https://pypi.douban.com/simple Flask-Bootstrap==3.3.7.1  && \
        pip install -i https://pypi.douban.com/simple Flask-CKEditor==0.4.4.1  && \
        pip install -i https://pypi.douban.com/simple Flask-Email==1.4.4  && \
        pip install -i https://pypi.douban.com/simple Flask-Login==0.5.0  && \
        pip install -i https://pypi.douban.com/simple Flask-Mail==0.9.1  && \
        pip install -i https://pypi.douban.com/simple Flask-Migrate==2.5.3  && \
        pip install -i https://pypi.douban.com/simple Flask-Moment==0.10.0  && \
        pip install -i https://pypi.douban.com/simple Flask-Share==0.1.1  && \
        pip install -i https://pypi.douban.com/simple Flask-SQLAlchemy==2.4.4  && \
        pip install -i https://pypi.douban.com/simple flask-whooshee==0.7.0  && \
        pip install -i https://pypi.douban.com/simple Flask-WTF==0.14.3  && \
        pip install -i https://pypi.douban.com/simple idna==2.10  && \
        pip install -i https://pypi.douban.com/simple imageio==2.9.0  && \
        pip install -i https://pypi.douban.com/simple itsdangerous==1.1.0  && \
        pip install -i https://pypi.douban.com/simple jieba==0.42.1  && \
        pip install -i https://pypi.douban.com/simple Jinja2==2.11.2  && \
        pip install -i https://pypi.douban.com/simple kiwisolver  && \
        pip install -i https://pypi.douban.com/simple Mako==1.1.3  && \
        pip install -i https://pypi.douban.com/simple MarkupSafe==1.1.1  && \
        pip install -i https://pypi.douban.com/simple matplotlib  && \
        pip install -i https://pypi.douban.com/simple numpy  && \
        pip install -i https://pypi.douban.com/simple Pillow==7.2.0  && \
        pip install -i https://pypi.douban.com/simple PyMySQL==0.10.1  && \
        pip install -i https://pypi.douban.com/simple pyparsing==2.4.7  && \
        pip install -i https://pypi.douban.com/simple python-dateutil==2.8.1  && \
        pip install -i https://pypi.douban.com/simple python-dotenv==0.14.0  && \
        pip install -i https://pypi.douban.com/simple python-editor==1.0.4  && \
        pip install -i https://pypi.douban.com/simple requests==2.24.0  && \
        pip install -i https://pypi.douban.com/simple six==1.15.0  && \
        pip install -i https://pypi.douban.com/simple SQLAlchemy==1.3.19  && \
        pip install -i https://pypi.douban.com/simple urllib3==1.25.10  && \
        pip install -i https://pypi.douban.com/simple visitor==0.1.3  && \
        pip install -i https://pypi.douban.com/simple Werkzeug==1.0.1  && \
        pip install -i https://pypi.douban.com/simple Whoosh==2.7.4  && \
        pip install -i https://pypi.douban.com/simple wordcloud==1.8.0  && \
        pip install -i https://pypi.douban.com/simple WTForms==2.3.3  && \
        pip install -i https://pypi.douban.com/simple lxml  && \
        pip install -i https://pypi.douban.com/simple pycurl  && \
        pip install -i https://pypi.douban.com/simple PyExecJS  && \
        pip install -i https://pypi.douban.com/simple logbook  && \
        pip install -i https://pypi.douban.com/simple uwsgi  && \
        apk del .build-dependencies && rm -rf /var/cache/* && rm -rf /root/.cache && rm -rf /root/.ash_history