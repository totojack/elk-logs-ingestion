# Instructions

This is a simple and quick solution for local logs ingestion and visualization using [ELK stack](https://www.elastic.co/) already shipped into [sebp/elk docker image](https://hub.docker.com/r/sebp/elk/).

## Requirements

- docker
- web server access logs files
- web server access logs format (for example an apache access log: LogFormat "%h %l %u %t \"%r\" %>s %b %O %I %{us}T \"%{Referer}i\" \"%{User-Agent}i\"" combined)

## Grok configuration test

You must create a grok expression for a correct logs ingestion. Check it using the shipped tool in to Kibana: Kibana -> Dev Tools -> Grok Debugger

## Logstash configuration

You must review logstash.conf file updating your grok configuration and other filters.

## Logs ingestion and visualization

- create logs directory
- put logs into logs/ directory
- make run
- open into a browser http://localhost:5601
- configure Kibana index
- configure a dashboard
- visualize
