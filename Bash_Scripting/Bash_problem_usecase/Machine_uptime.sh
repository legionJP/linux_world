#!/bin/bash

# showuptime()
# {
#     up=$(uptime -p | cut -c4- )
#     since=$(uptime -s)
#     cat << EOF
#     This system has been up for ${up}
#     It is running since ${since}
# EOF
# }
# showuptime

showuptime()
{
    up=$(/usr/bin/uptime -p | cut -c4- )
    since=$(/usr/bin/uptime -s)
    cat << EOF
    This system has been up for ${up}
    It is running since ${since}
EOF
}
showuptime

