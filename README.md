# websocketd
Websocketd docker image

## Usage


```bash
#!/bin/bash
# count.sh

COUNT=${COUNT:-10}

for n in $(seq 1 $COUNT); do
  echo $n
  sleep 1
done
```

```bash
docker run -ti --rm -v `pwd`/example:/example -p 8080:8080 suquant/websocketd --port=8080 /example/count.sh 

```

```html
<!DOCTYPE html>
<pre id="log"></pre>
<script>
  // helper function: log message to screen
  function log(msg) {
    document.getElementById('log').textContent += msg + '\n';
  }

  // setup websocket with callbacks
  var ws = new WebSocket('ws://localhost:8080/');
  ws.onopen = function() {
    log('CONNECT');
  };
  ws.onclose = function() {
    log('DISCONNECT');
  };
  ws.onmessage = function(event) {
    log('MESSAGE: ' + event.data);
  };
</script>
```