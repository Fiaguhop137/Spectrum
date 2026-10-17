#!/bin/bash
cd /home/firebot/git/Spectrum
while /usr/bin/pgrep -f '[p]rism\.py' >/dev/null; do
    /usr/bin/pkill -f '[p]rism\.py'
done
/usr/bin/nohup /usr/bin/python3 /home/firebot/git/Spectrum/prism.py > /home/firebot/git/Spectrum/prism.log 2>&1 &
