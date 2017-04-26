docker-vegeta
=============

[![](https://images.microbadger.com/badges/image/vishnunair/docker-vegeta.svg)](https://microbadger.com/images/vishnunair/docker-vegeta)
[![](https://images.microbadger.com/badges/version/vishnunair/docker-vegeta.svg)](https://microbadger.com/images/vishnunair/docker-vegeta)

Vegeta is a versatile HTTP load testing tool built out of need to drill HTTP services with a constant request rate. It can be used both as a command line utility and a library.

Here I am using it inside a docker container to run the HTTP LOAD TESTS

#USAGE

```
vishnu@server:~/docker-vegeta$ sudo docker run -d --name vegeta -it vishnunair/docker-vegeta 

vishnu@server:~/docker-vegeta$ sudo docker exec -it vegeta bash

Here I am testing google.com

root@46a08bbcb4df:/go# echo "GET https://google.com/" | vegeta attack -duration=5s -rate=5 -timeout=1m | tee output.bin | vegeta report

```

#If you want the output in the HTML format
```
root@46a08bbcb4df:/go# cat output.bin | vegeta report -reporter=output > output.html

```
#If you want the output in the JSON format

```
root@46a08bbcb4df:/go# cat output.bin | vegeta report -inputs=output.bin -reporter=json > metrics.json

```
