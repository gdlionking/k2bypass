#!/bin/sh
if [[ $2 == "AP-STA-CONNECTED" ]]
then
  mosquitto_pub -h 192.168.99.  -u gdlion -P 255205 -t storewifi/connected  -m "a device connected to store wifi"
  echo "someone has connected with mac id $3 on $1" > /root/wifilog
  fi

  if [[ $2 == "AP-STA-DISCONNECTED" ]]
  then
mosquitto_pub -h 192.168.99.  -u gdlion -P 255205 -t storewifi/disconnected  -m "a device disconnected to store wifi"
 echo "someone has disconnected with mac id $3 on $1"  > /root/wifilog
fi
