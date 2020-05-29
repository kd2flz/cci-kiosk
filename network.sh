#Thanks to Martin Wimpress for this bit of code

echo "[+] Will now configure network"
  # Disable cloud-init from managing the network
  echo "network: {config: disabled}" > /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg

  # Instruct netplan to hand all network management to NetworkManager
   cat <<EOM > /etc/netplan/01-network-manager-all.yaml
# Let NetworkManager manage all devices on this system
network:
  version: 2
  renderer: NetworkManager
EOM
