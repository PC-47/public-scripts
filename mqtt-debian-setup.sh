apt install mosquitto mosquitto-clients -y

systemctl enable mosquitto.service
systemctl start mosquitto.service

MOSQUITTO_CONFIG_FILE="/etc/mosquitto/mosquitto.conf"

echo "" > $MOSQUITTO_CONFIG_FILE

echo "listener 1883 # port to listen on, default is 1883" >> $MOSQUITTO_CONFIG_FILE
echo "allow_anonymous true" >> $MOSQUITTO_CONFIG_FILE

systemctl restart mosquitto.service
