FROM python:3.8.6-alpine3.12

ENV LANG C.UTF-8

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
        apk update && apk add --no-cache libcurl libxslt pcre && \
        apk add --no-cache --virtual .build-dependencies g++ gcc musl-dev libxslt-dev jpeg-dev zlib-dev build-base curl-dev linux-headers pcre-dev && \
        pip install alembic==1.4.3  && \
        pip install blinker==1.4  && \
        pip install certifi==2020.6.20  && \
        pip install chardet==3.0.4  && \
        pip install click==7.1.2  && \
        pip install cycler==0.10.0  && \
        pip install dominate==2.5.2  && \
        pip install Flask==1.1.2  && \
        pip install Flask-Admin==1.5.6  && \
        pip install Flask-Avatars==0.2.2  && \
        pip install Flask-Bootstrap==3.3.7.1  && \
        pip install Flask-CKEditor==0.4.4.1  && \
        pip install Flask-Email==1.4.4  && \
        pip install Flask-Login==0.5.0  && \
        pip install Flask-Mail==0.9.1  && \
        pip install Flask-Migrate==2.5.3  && \
        pip install Flask-Moment==0.10.0  && \
        pip install Flask-Share==0.1.1  && \
        pip install Flask-SQLAlchemy==2.4.4  && \
        pip install flask-whooshee==0.7.0  && \
        pip install Flask-WTF==0.14.3  && \
        pip install idna==2.10  && \
        pip install imageio==2.9.0  && \
        pip install itsdangerous==1.1.0  && \
        pip install jieba==0.42.1  && \
        pip install Jinja2==2.11.2  && \
        pip install kiwisolver  && \
        pip install Mako==1.1.3  && \
        pip install MarkupSafe==1.1.1  && \
        pip install matplotlib  && \
        pip install numpy  && \
        pip install Pillow==7.2.0  && \
        pip install PyMySQL==0.10.1  && \
        pip install pyparsing==2.4.7  && \
        pip install python-dateutil==2.8.1  && \
        pip install python-dotenv==0.14.0  && \
        pip install python-editor==1.0.4  && \
        pip install requests==2.24.0  && \
        pip install six==1.15.0  && \
        pip install SQLAlchemy==1.3.19  && \
        pip install urllib3==1.25.10  && \
        pip install visitor==0.1.3  && \
        pip install Werkzeug==1.0.1  && \
        pip install Whoosh==2.7.4  && \
        pip install wordcloud==1.8.0  && \
        pip install WTForms==2.3.3  && \
        pip install lxml  && \
        pip install pycurl  && \
        pip install PyExecJS  && \
        pip install logbook  && \
        pip install uwsgi  && \
        pip install ShopifyAPI  && \
        pip install basic-shopify-api  && \
        pip install celery  && \
        pip install flower  && \
        pip install redis  && \
        pip install flask-socketio  && \
        pip install Flask-Session && \
        apk del .build-dependencies && rm -rf /var/cache/* && rm -rf /root/.cache && rm -rf /root/.ash_history
