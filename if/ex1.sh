NAME=`whoami`

# if you wanted to pass something to this script, you would do:
# export MSG=hi
# before running it.

if [ "$PWD" == "$HOME" ]; then
  echo "Welcome home, $NAME"
elif [ "x$MSG" != "x" ]; then
  echo "$NAME", you have a message for me: "$MSG"
else
  echo "You can pass me something in \$MSG"
fi
