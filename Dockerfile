FROM python:3.8.11-alpine3.13

ENV LANG C.UTF-8

RUN apk update && apk add --no-cache libcurl libxslt pcre && \
        apk add --no-cache --virtual .build-dependencies g++ gcc musl-dev libxslt-dev jpeg-dev zlib-dev build-base curl-dev linux-headers pcre-dev && \
        pip install Flask                     && \
        pip install Flask-SQLAlchemy          && \
        pip install Flask-Migrate             && \
        pip install Flask-Admin               && \
        pip install Flask-Login               && \
        pip install Flask-SocketIO            && \
        pip install Flask-Whooshee            && \
        pip install Flask-WTF                 && \
        pip install Flask-Mail                && \
        pip install flask-cors                && \
        pip install Flask-Moment              && \
        pip install Flask-CKEditor            && \
        pip install Bootstrap-Flask           && \
        pip install pycurl                    && \
        pip install PyExecJS                  && \
        pip install Pillow                    && \
        pip install PyMySQL                   && \
        pip install python-dateutil           && \
        pip install python-dotenv             && \
        pip install requests                  && \
        pip install PyYAML                    && \
        pip install redis                     && \
        pip install uWSGI                     && \
        pip install lxml                      && \
        pip install PyJWT                     && \
        pip install pytz                      && \
        pip install Logbook                   && \
        pip install celery                    && \
        pip install flower                    && \
        pip install basic-shopify-api         && \
        wget https://github.com/Shopify/shopify_python_api/archive/refs/tags/v8.4.2.tar.gz -O /tmp/shopify_python_api_8.4.2.tar.gz && \
        tar xzf /tmp/shopify_python_api_8.4.2.tar.gz -C /tmp/ && cd /tmp/shopify_python_api-8.4.2 && \
        python setup.py sdist && pip install --upgrade dist/ShopifyAPI-8.4.2.tar.gz && \
        sed -i -e "s/2020-04/2021-07/g" /usr/local/lib/python3.8/site-packages/basic_shopify_api/constants.py && \
        sed -i -e "s/link\[result\[1\]\] = result\[0\]/link\[result\[1\]\[0\:4\]\] = result\[0\]/g" /usr/local/lib/python3.8/site-packages/basic_shopify_api/clients/common.py && \
        sed -i -e "s/<.*page_info=(\[a-zA-Z0-9\\\-_\]+)\.\*>/<.*?page_info=([a-zA-Z0-9\-_]+).*?>/g" /usr/local/lib/python3.8/site-packages/basic_shopify_api/constants.py && \
        apk del .build-dependencies && rm -rf /tmp/* && rm -rf /var/cache/* && rm -rf /root/.cache && rm -rf /root/.ash_history
