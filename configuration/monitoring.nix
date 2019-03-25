{ config, ... }:

{

  services = {
  #  zabbixAgent = { # Comment by avb
  #    enable = true;
  #    server = "192.168.0.6";
  #    extraConfig =
  #      ''
  #        Hostname=atmosensors-01.corp.aira.life
  #      '';
  #  };

    # ZabbixAgent - added by avb
    zabbixAgent = {
      enable = true;
      server = "zbx-01.h.aira.life,zbx-01.corp.aira.life";
      extraConfig =
      ''
        Hostname=Atmosenser-01
        UserParameter=systemd.service[*],${config.systemd.package}/bin/systemctl is-active --quiet '$1' && echo 0 || echo 1
        UserParameter=parity.jsonRPC[*],
      '';
    };
  };
}
