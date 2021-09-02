FROM httpd:2.4.41

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/* \
  && wget  https://download.macromedia.com/dispatcher/download/dispatcher-apache2.4-linux-x86_64-4.3.3.tar.gz\
  && mkdir -p dispatcher \
  && tar -C dispatcher -zxvf dispatcher-apache2.4-linux-x86_64-4.3.3.tar.gz \
  && ls ./dispatcher \
  && mkdir -p htdocs/default \
  && mkdir -p htdocs/author \
  && mkdir -p htdocs/html \
  && mkdir -p htdocs/lc \
  && cp ./dispatcher/dispatcher-apache2.4-4.3.3.so /usr/local/apache2/modules/dispatcher-apache2.4-4.3.3.so \
  && ln -s /usr/local/apache2/modules/dispatcher-apache2.4-4.3.3.so /usr/local/apache2/modules/mod_dispatcher.so
