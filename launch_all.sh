#!/bin/bash
#sleep 10
cd $(dirname $BASH_SOURCE)

conky -dq -c time_rc
conky -dq -c system_rc
conky -dq -c processes_rc
conky -dq -c memory_rc
conky -dq -c filesystem_rc
conky -dq -c network_rc
conky -dq -c fortune_rc
#conky -dq -c mediaplayer_rc
