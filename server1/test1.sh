#!/bin/bash
# start client iperf session on port 5000
        iperf3 -c 10.3.0.10 -p 5000 -t 84600 -b 100 -i 1 -f m &>/dev/null &

done

