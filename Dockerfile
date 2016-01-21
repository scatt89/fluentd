FROM fluent/fluentd:latest

MAINTAINER Marrarichy Da Silva Garcia <dasilvagarciam@gmail.com>

USER ubuntu
WORKDIR /home/ubuntu
ENV PATH /home/ubuntu/ruby/bin:$PATH
RUN gem install fluent-plugin-secure-forward
RUN fluent-gem install fluent-plugin-elasticsearch --no-rdoc --no-ri
EXPOSE 24284
CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
