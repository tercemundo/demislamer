SALIDA=$(fuser -n tcp 3306)
if [ -n "$SALIDA" ]
then
	PID=$(netstat -natup | grep 3306 | grep kubectl | tail -1 | awk '{print $NF}' | awk -F/ '{print $1}')
	echo "el pid  $PID corresponde a un forward, lo matamos"
	kill -9 $PID
       	
fi
