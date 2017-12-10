  export OVPN_DATA="$(pwd)/etc/openvpn"
  export USER=$1
  docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full $USER nopass
  docker run -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient $USER> ./user-config/$USER.ovpn

  
  
