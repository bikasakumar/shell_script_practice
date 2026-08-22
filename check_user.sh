#1/bin/bash

if [ $# -ne 1 ];
then
    echo "Usage: $0 <Username>"
    exit 1
fi

USER_NAME=$1

# the id command checks information about a Linux user.
# &>/dev/null  send both standard output and standard error to /dev/null
# id vicky
# might print:
# uid=1000(vicky) gid=1000(vicky) groups=1000(vicky)
# But we don't actually care about this output. We only care whether id succeeded or failed. hides the output

if id "$USER_NAME" &>/dev/null;
then
    echo "User $USER_NAME exist"
else
    echo "User $USER_NAME does not exist"
fi



<<comment input: ./check_user.sh vicky
output: User vicky exists
comment