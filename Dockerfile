# Logstash 6.8.1

# This image re-bundles the Docker image from the upstream provider, Elastic.
FROM docker.elastic.co/logstash/logstash:6.8.1@sha256:2280dc3c1deb9d9006cd2a423e09e649ed19109292690f52dd303d0048fc68e1

RUN logstash-plugin install --no-verify logstash-input-syslog &&\
    logstash-plugin install logstash-output-kusto
