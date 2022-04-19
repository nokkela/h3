openvpn_package:
  pkg.installed:
    - name: openvpn
openvpn_service:
  service.running:
  - name: openvpn
  - watch:
    - file: /etc/openvpn/neptunium.conf
openvpn_config:
  file.managed:
    - name: /etc/openvpn/neptunium.conf
    - source: salt://openvpn/neptunium.conf
    - user: root
    - perms: 0600
user_check:
  user.present:
    - name: ville
    - home: /home/ville/
    - shell: /bin/zsh
